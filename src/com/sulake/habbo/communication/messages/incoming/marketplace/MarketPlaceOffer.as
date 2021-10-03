package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2398:int;
      
      private var var_2075:String;
      
      private var var_1606:int;
      
      private var var_402:int;
      
      private var var_2397:int = -1;
      
      private var var_2399:int;
      
      private var var_2031:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2398 = param3;
         this.var_2075 = param4;
         this.var_1606 = param5;
         this.var_402 = param6;
         this.var_2397 = param7;
         this.var_2399 = param8;
         this.var_2031 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2398;
      }
      
      public function get stuffData() : String
      {
         return this.var_2075;
      }
      
      public function get price() : int
      {
         return this.var_1606;
      }
      
      public function get status() : int
      {
         return this.var_402;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2397;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2399;
      }
      
      public function get offerCount() : int
      {
         return this.var_2031;
      }
   }
}
