package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_299:int;
      
      private var var_2094:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_299 = param1;
         this.var_2094 = param2;
      }
      
      public function get badgeId() : int
      {
         return this.var_299;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2094;
      }
   }
}
