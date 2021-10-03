package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2522:int = 0;
      
      private var var_1347:String = "";
      
      private var var_1621:String = "";
      
      private var var_2230:String = "";
      
      private var var_2523:String = "";
      
      private var var_1798:int = 0;
      
      private var var_2525:int = 0;
      
      private var var_2521:int = 0;
      
      private var var_1345:int = 0;
      
      private var var_2524:int = 0;
      
      private var var_1348:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2522 = param1;
         this.var_1347 = param2;
         this.var_1621 = param3;
         this.var_2230 = param4;
         this.var_2523 = param5;
         if(param6)
         {
            this.var_1798 = 1;
         }
         else
         {
            this.var_1798 = 0;
         }
         this.var_2525 = param7;
         this.var_2521 = param8;
         this.var_1345 = param9;
         this.var_2524 = param10;
         this.var_1348 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2522,this.var_1347,this.var_1621,this.var_2230,this.var_2523,this.var_1798,this.var_2525,this.var_2521,this.var_1345,this.var_2524,this.var_1348];
      }
   }
}
