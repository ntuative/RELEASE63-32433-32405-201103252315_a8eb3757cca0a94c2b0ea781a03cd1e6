package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1622:int;
      
      private var var_2689:int;
      
      private var var_809:int;
      
      private var var_484:Number;
      
      private var var_2691:Boolean;
      
      private var var_2690:int;
      
      private var var_1903:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2689 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2690 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2691 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_809;
         if(this.var_809 == 1)
         {
            this.var_484 = param1;
            this.var_1622 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_809);
            this.var_484 = this.var_484 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2691 && param3 - this.var_1622 >= this.var_2689 && this.var_1903 < this.var_2690)
         {
            _loc5_ = 1000 / this.var_484;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1903;
            this.var_1622 = param3;
            this.var_809 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
