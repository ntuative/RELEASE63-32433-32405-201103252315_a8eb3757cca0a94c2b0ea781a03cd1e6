package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_195:IHabboConfigurationManager = null;
      
      private var var_567:int = 0;
      
      private var var_484:Number = 0;
      
      private var var_2868:Array;
      
      private var var_1347:String = "";
      
      private var var_1621:String = "";
      
      private var var_2230:String = "";
      
      private var var_2523:String = "";
      
      private var var_1798:Boolean = false;
      
      private var var_1619:GarbageMonitor = null;
      
      private var var_1345:int = 0;
      
      private var var_2231:Boolean;
      
      private var var_1623:int = 1000;
      
      private var var_1348:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_1622:int = 0;
      
      private var var_1620:int = 10;
      
      private var var_1346:int = 0;
      
      private var var_2233:Number = 0.15;
      
      private var var_2232:Boolean = true;
      
      private var var_2229:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2868 = [];
         super();
         this.var_1621 = Capabilities.version;
         this.var_2230 = Capabilities.os;
         this.var_1798 = Capabilities.isDebugger;
         this.var_1347 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1347 == null)
         {
            this.var_1347 = "unknown";
         }
         this.var_1619 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1622 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1621;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_484;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1623 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1620 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_195 = param1;
         this._reportInterval = int(this.var_195.getKey("performancetest.interval","60"));
         this.var_1623 = int(this.var_195.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1620 = int(this.var_195.getKey("performancetest.reportlimit","10"));
         this.var_2233 = Number(this.var_195.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2232 = Boolean(int(this.var_195.getKey("performancetest.distribution.enabled","1")));
         this.var_2231 = Boolean(this.var_195.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1619.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1619.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         if(this.var_2231)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1345;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1623)
         {
            ++this.var_1348;
            _loc3_ = true;
         }
         else
         {
            ++this.var_567;
            if(this.var_567 <= 1)
            {
               this.var_484 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_567);
               this.var_484 = this.var_484 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_1622 > this._reportInterval * 1000 && this.var_1346 < this.var_1620)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_484);
            _loc6_ = true;
            if(this.var_2232 && this.var_1346 > 0)
            {
               _loc7_ = this.differenceInPercents(this.var_2229,this.var_484);
               if(_loc7_ < this.var_2233)
               {
                  _loc6_ = false;
               }
            }
            this.var_1622 = param2;
            if(_loc6_ || _loc3_)
            {
               this.var_2229 = this.var_484;
               if(this.sendReport(param2))
               {
                  ++this.var_1346;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1347,this.var_1621,this.var_2230,this.var_2523,this.var_1798,_loc5_,_loc4_,this.var_1345,this.var_484,this.var_1348);
            this._connection.send(_loc2_);
            this.var_1345 = 0;
            this.var_484 = 0;
            this.var_567 = 0;
            this.var_1348 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
