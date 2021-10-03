package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_380:String = "";
      
      private var var_2400:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function get objectId() : String
      {
         return this.var_380;
      }
      
      public function set objectId(param1:String) : void
      {
         this.var_380 = param1;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2400;
      }
      
      public function set spriteTag(param1:String) : void
      {
         this.var_2400 = param1;
      }
   }
}
