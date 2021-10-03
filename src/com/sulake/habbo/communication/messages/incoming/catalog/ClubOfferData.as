package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1605:String;
      
      private var var_1606:int;
      
      private var var_2180:Boolean;
      
      private var var_2175:Boolean;
      
      private var var_2179:int;
      
      private var var_2176:int;
      
      private var var_2174:int;
      
      private var var_2173:int;
      
      private var var_2177:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1605 = param1.readString();
         this.var_1606 = param1.readInteger();
         this.var_2180 = param1.readBoolean();
         this.var_2175 = param1.readBoolean();
         this.var_2179 = param1.readInteger();
         this.var_2176 = param1.readInteger();
         this.var_2174 = param1.readInteger();
         this.var_2173 = param1.readInteger();
         this.var_2177 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1605;
      }
      
      public function get price() : int
      {
         return this.var_1606;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2180;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2175;
      }
      
      public function get periods() : int
      {
         return this.var_2179;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2176;
      }
      
      public function get year() : int
      {
         return this.var_2174;
      }
      
      public function get month() : int
      {
         return this.var_2173;
      }
      
      public function get day() : int
      {
         return this.var_2177;
      }
   }
}
