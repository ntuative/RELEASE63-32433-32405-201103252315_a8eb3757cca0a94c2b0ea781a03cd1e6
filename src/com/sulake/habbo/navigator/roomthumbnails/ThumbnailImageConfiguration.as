package com.sulake.habbo.navigator.roomthumbnails
{
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ThumbnailImageConfiguration
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _id:int;
      
      private var _type:int;
      
      private var var_1764:String;
      
      private var var_1763:BitmapData;
      
      private var _selected:Boolean;
      
      private var var_1761:BitmapData;
      
      private var var_613:IBitmapWrapperWindow;
      
      private var var_1762:Rectangle;
      
      private var var_1418:int = 1;
      
      public function ThumbnailImageConfiguration(param1:HabboNavigator, param2:int, param3:int, param4:String, param5:BitmapData)
      {
         super();
         this._navigator = param1;
         this._id = param2;
         this._type = param3;
         this.var_1764 = param4;
         this.var_1761 = param5;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get picName() : String
      {
         return this.var_1764;
      }
      
      public function getImg() : BitmapData
      {
         if(this.var_1763 == null)
         {
            this.var_1763 = this._navigator.getButtonImage(this.var_1764);
         }
         return this.var_1763;
      }
      
      public function registerListImg(param1:IBitmapWrapperWindow) : void
      {
         this.var_613 = param1;
         this.refreshListImg();
      }
      
      public function copyTo(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = this.getImg();
         param1.copyPixels(_loc2_,_loc2_.rect,new Point((param1.width - _loc2_.width) / 2,param1.height - _loc2_.height),null,null,true);
      }
      
      public function setSelected(param1:Boolean) : void
      {
         if(this._selected == param1)
         {
            return;
         }
         this._selected = param1;
         this.refreshListImg();
      }
      
      private function refreshListImg() : void
      {
         var _loc1_:* = null;
         if(this.var_1762 == null)
         {
            _loc1_ = this.var_613.bitmap.rect;
            this.var_1762 = new Rectangle(this.var_1418,this.var_1418,_loc1_.width - 2 * this.var_1418,_loc1_.height - 2 * this.var_1418);
         }
         this.var_613.bitmap.fillRect(this.var_613.bitmap.rect,4281545523);
         this.var_613.bitmap.fillRect(this.var_1762,4284900966);
         this.copyTo(this.var_613.bitmap);
         if(this._selected)
         {
            this.var_613.bitmap.copyPixels(this.var_1761,this.var_1761.rect,new Point(0,0),null,null,true);
         }
         this.var_613.invalidate();
      }
   }
}
