package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_183:int = 0;
       
      
      private var var_2355:int = 0;
      
      private var var_1528:Dictionary;
      
      private var var_1972:int = 0;
      
      private var var_1971:int = 0;
      
      private var var_2634:Boolean = false;
      
      private var var_2631:int = 0;
      
      private var var_2625:int = 0;
      
      public function Purse()
      {
         this.var_1528 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2355;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2355 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1972;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1972 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1971;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1971 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1972 > 0 || this.var_1971 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2634;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2634 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2631;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2631 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2625;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2625 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1528;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1528 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1528[param1];
      }
   }
}
