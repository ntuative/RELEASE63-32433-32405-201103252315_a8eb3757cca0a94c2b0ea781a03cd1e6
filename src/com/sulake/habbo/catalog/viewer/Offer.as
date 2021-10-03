package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1451:String = "pricing_model_unknown";
      
      public static const const_570:String = "pricing_model_single";
      
      public static const const_561:String = "pricing_model_multi";
      
      public static const const_520:String = "pricing_model_bundle";
      
      public static const const_1512:String = "price_type_none";
      
      public static const const_769:String = "price_type_credits";
      
      public static const const_1023:String = "price_type_activitypoints";
      
      public static const const_1130:String = "price_type_credits_and_activitypoints";
       
      
      private var var_792:String;
      
      private var var_1192:String;
      
      private var _offerId:int;
      
      private var var_1848:String;
      
      private var var_1194:int;
      
      private var var_1193:int;
      
      private var _activityPointType:int;
      
      private var var_425:ICatalogPage;
      
      private var var_793:IProductContainer;
      
      private var var_2593:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1848 = param1.localizationId;
         this.var_1194 = param1.priceInCredits;
         this.var_1193 = param1.method_1;
         this._activityPointType = param1.activityPointType;
         this.var_425 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_425;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1848;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1194;
      }
      
      public function get method_1() : int
      {
         return this.var_1193;
      }
      
      public function get activityPointType() : int
      {
         return this._activityPointType;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_793;
      }
      
      public function get pricingModel() : String
      {
         return this.var_792;
      }
      
      public function get priceType() : String
      {
         return this.var_1192;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2593;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2593 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1848 = "";
         this.var_1194 = 0;
         this.var_1193 = 0;
         this._activityPointType = 0;
         this.var_425 = null;
         if(this.var_793 != null)
         {
            this.var_793.dispose();
            this.var_793 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_792)
         {
            case const_570:
               this.var_793 = new SingleProductContainer(this,param1);
               break;
            case const_561:
               this.var_793 = new MultiProductContainer(this,param1);
               break;
            case const_520:
               this.var_793 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_792);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_792 = const_570;
            }
            else
            {
               this.var_792 = const_561;
            }
         }
         else if(param1.length > 1)
         {
            this.var_792 = const_520;
         }
         else
         {
            this.var_792 = const_1451;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1194 > 0 && this.var_1193 > 0)
         {
            this.var_1192 = const_1130;
         }
         else if(this.var_1194 > 0)
         {
            this.var_1192 = const_769;
         }
         else if(this.var_1193 > 0)
         {
            this.var_1192 = const_1023;
         }
         else
         {
            this.var_1192 = const_1512;
         }
      }
   }
}
