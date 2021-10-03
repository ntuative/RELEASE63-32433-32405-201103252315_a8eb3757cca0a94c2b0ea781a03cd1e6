package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2707:String;
      
      private var var_2709:Class;
      
      private var var_2708:Class;
      
      private var var_1909:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2707 = param1;
         this.var_2709 = param2;
         this.var_2708 = param3;
         if(rest == null)
         {
            this.var_1909 = new Array();
         }
         else
         {
            this.var_1909 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2707;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2709;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2708;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1909;
      }
   }
}
