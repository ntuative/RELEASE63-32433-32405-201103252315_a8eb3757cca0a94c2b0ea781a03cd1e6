package com.sulake.habbo.advertisement.events
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class AdEvent extends Event
   {
      
      public static const const_540:String = "AE_ROOM_AD_SHOW";
      
      public static const const_545:String = "AE_INTERSTITIAL_SHOW";
      
      public static const const_577:String = "AE_INTERSTITIAL_COMPLETE";
       
      
      private var var_46:BitmapData;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      private var var_1136:String;
      
      private var var_2706:BitmapData;
      
      private var var_2705:BitmapData;
      
      public function AdEvent(param1:String, param2:int = 0, param3:int = 0, param4:BitmapData = null, param5:String = "", param6:BitmapData = null, param7:BitmapData = null, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param8,param9);
         this.var_46 = param4;
         this._roomId = param2;
         this._roomCategory = param3;
         this.var_1136 = param5;
         this.var_2706 = param6;
         this.var_2705 = param7;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get clickUrl() : String
      {
         return this.var_1136;
      }
      
      public function get adWarningL() : BitmapData
      {
         return this.var_2706;
      }
      
      public function get adWarningR() : BitmapData
      {
         return this.var_2705;
      }
   }
}
