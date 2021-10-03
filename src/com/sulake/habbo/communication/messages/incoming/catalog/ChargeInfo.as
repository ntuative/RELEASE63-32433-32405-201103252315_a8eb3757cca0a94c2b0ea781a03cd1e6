package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2488:int;
      
      private var var_2487:int;
      
      private var var_1194:int;
      
      private var var_1193:int;
      
      private var _activityPointType:int;
      
      private var var_2489:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2488 = param1.readInteger();
         this.var_2487 = param1.readInteger();
         this.var_1194 = param1.readInteger();
         this.var_1193 = param1.readInteger();
         this._activityPointType = param1.readInteger();
         this.var_2489 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2488;
      }
      
      public function get charges() : int
      {
         return this.var_2487;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1194;
      }
      
      public function get method_1() : int
      {
         return this.var_1193;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2489;
      }
      
      public function get activityPointType() : int
      {
         return this._activityPointType;
      }
   }
}
