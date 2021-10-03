package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2183:String;
      
      private var var_2363:Array;
      
      private var var_2362:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2183 = param1;
         this.var_2363 = param2;
         this.var_2362 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2183;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2363;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2362;
      }
   }
}
