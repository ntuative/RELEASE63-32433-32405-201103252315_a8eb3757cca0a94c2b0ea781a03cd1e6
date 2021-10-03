package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1605:String;
      
      private var var_1606:int;
      
      private var var_2180:Boolean;
      
      private var var_2175:Boolean;
      
      private var var_2179:int;
      
      private var var_2176:int;
      
      private var var_425:ICatalogPage;
      
      private var var_2174:int;
      
      private var var_2173:int;
      
      private var var_2177:int;
      
      private var var_2178:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1605 = param2;
         this.var_1606 = param3;
         this.var_2180 = param4;
         this.var_2175 = param5;
         this.var_2179 = param6;
         this.var_2176 = param7;
         this.var_2174 = param8;
         this.var_2173 = param9;
         this.var_2177 = param10;
      }
      
      public function dispose() : void
      {
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
      
      public function get method_1() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_183;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1606;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_425;
      }
      
      public function get priceType() : String
      {
         return Offer.const_769;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1605;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_425 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2178;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2178 = param1;
      }
   }
}
