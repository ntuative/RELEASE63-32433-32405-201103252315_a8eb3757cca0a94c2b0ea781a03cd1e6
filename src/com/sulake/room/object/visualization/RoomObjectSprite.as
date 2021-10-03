package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1114:int = 0;
       
      
      private var var_418:BitmapData = null;
      
      private var var_1757:String = "";
      
      private var var_322:Boolean = true;
      
      private var var_2331:String = "";
      
      private var var_2327:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_2332:String = "normal";
      
      private var var_1487:Boolean = false;
      
      private var var_1486:Boolean = false;
      
      private var _offset:Point;
      
      private var var_258:int = 0;
      
      private var _height:int = 0;
      
      private var var_1197:Number = 0;
      
      private var var_2328:Boolean = false;
      
      private var var_2330:Boolean = true;
      
      private var var_2329:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var _instanceId:int = 0;
      
      private var var_1677:Array;
      
      public function RoomObjectSprite()
      {
         this._offset = new Point(0,0);
         this.var_1677 = [];
         super();
         this._instanceId = var_1114++;
      }
      
      public function dispose() : void
      {
         this.var_418 = null;
         this.var_258 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_418;
      }
      
      public function get assetName() : String
      {
         return this.var_1757;
      }
      
      public function get visible() : Boolean
      {
         return this.var_322;
      }
      
      public function get tag() : String
      {
         return this.var_2331;
      }
      
      public function get alpha() : int
      {
         return this.var_2327;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_2332;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1486;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1487;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_258;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1197;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2328;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2330;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2329;
      }
      
      public function get instanceId() : int
      {
         return this._instanceId;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_1677;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_258 = param1.width;
            this._height = param1.height;
         }
         this.var_418 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_1757 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_322 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2331 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2327 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_2332 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_1677 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1487 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1486 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1197 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2328 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2330 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2329 = param1;
         ++this._updateID;
      }
   }
}
