package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_712:String = "";
      
      public static const const_394:int = 0;
      
      public static const const_556:int = 255;
      
      public static const const_770:Boolean = false;
      
      public static const const_587:int = 0;
      
      public static const const_579:int = 0;
      
      public static const const_365:int = 0;
      
      public static const const_1202:int = 1;
      
      public static const const_1213:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2331:String = "";
      
      private var var_1655:int = 0;
      
      private var var_2327:int = 255;
      
      private var var_2367:Boolean = false;
      
      private var var_2368:int = 0;
      
      private var var_2366:int = 0;
      
      private var var_2365:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2331 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2331;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1655 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1655;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2327 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2327;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2367 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2367;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2368 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2368;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2366 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2366;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2365 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2365;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
