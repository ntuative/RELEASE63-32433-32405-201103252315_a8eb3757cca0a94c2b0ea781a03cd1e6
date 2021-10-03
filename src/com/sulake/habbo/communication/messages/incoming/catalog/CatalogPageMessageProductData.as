package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_77:String = "i";
      
      public static const const_81:String = "s";
      
      public static const const_174:String = "e";
       
      
      private var var_1667:String;
      
      private var var_2584:int;
      
      private var var_1361:String;
      
      private var var_1362:int;
      
      private var var_1668:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1667 = param1.readString();
         this.var_2584 = param1.readInteger();
         this.var_1361 = param1.readString();
         this.var_1362 = param1.readInteger();
         this.var_1668 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1667;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2584;
      }
      
      public function get extraParam() : String
      {
         return this.var_1361;
      }
      
      public function get productCount() : int
      {
         return this.var_1362;
      }
      
      public function get expiration() : int
      {
         return this.var_1668;
      }
   }
}
