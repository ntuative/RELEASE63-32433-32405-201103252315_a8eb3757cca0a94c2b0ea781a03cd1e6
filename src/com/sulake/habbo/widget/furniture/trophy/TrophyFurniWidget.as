package com.sulake.habbo.widget.furniture.trophy
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetTrophyDataUpdateEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public class TrophyFurniWidget extends RoomWidgetBase
   {
      
      private static const const_1339:Array = new Array("trophy_bg_gold","trophy_bg_silver","trophy_bg_bronze");
      
      private static const const_1268:Number = 100;
      
      private static const WINDOW_INITIAL_Y:Number = 100;
       
      
      private var _window:IWindowContainer;
      
      private var _name:String;
      
      private var var_2513:String;
      
      private var _message:String = null;
      
      private var _color:Number;
      
      public function TrophyFurniWidget(param1:IHabboWindowManager, param2:IAssetLibrary = null)
      {
         super(param1,param2);
      }
      
      override public function dispose() : void
      {
         this.hideInterface();
         super.dispose();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetTrophyDataUpdateEvent.const_842,this.onObjectUpdate);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetTrophyDataUpdateEvent.const_842,this.onObjectUpdate);
      }
      
      private function onObjectUpdate(param1:RoomWidgetTrophyDataUpdateEvent) : void
      {
         this.hideInterface();
         this._name = param1.name;
         this.var_2513 = param1.date;
         this._message = param1.message;
         this._color = param1.color - 1;
         if(this._color > 2 || this._color < 0)
         {
            this._color = 0;
         }
         this.showInterface();
      }
      
      private function showInterface() : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc1_:IAsset = assets.getAssetByName("trophy");
         var _loc2_:XmlAsset = XmlAsset(_loc1_);
         if(_loc2_ == null)
         {
            return;
         }
         if(this._window != null)
         {
            this._window.dispose();
            this._window = null;
         }
         this._window = windowManager.createWindow("trophyui_container","",HabboWindowType.const_62,HabboWindowStyle.const_32,0 | 0,new Rectangle(const_1268,WINDOW_INITIAL_Y,2,2),null,0) as IWindowContainer;
         this._window.buildFromXML(XML(_loc2_.content));
         _loc3_ = this._window.findChildByName("close");
         if(_loc3_ != null)
         {
            _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMouseEvent);
         }
         _loc4_ = this._window.findChildByName("greeting") as ITextWindow;
         if(_loc4_ != null)
         {
            this._message = this._message.replace(/\\r/g,"\n");
            _loc4_.text = this._message;
         }
         _loc5_ = this._window.findChildByName("date") as ITextWindow;
         if(_loc5_ != null)
         {
            _loc5_.text = this.var_2513;
         }
         _loc6_ = this._window.findChildByName("name") as ITextWindow;
         if(_loc6_ != null)
         {
            _loc6_.text = this._name;
         }
         _loc7_ = assets.getAssetByName(const_1339[this._color]) as BitmapDataAsset;
         _loc9_ = this._window.findChildByName("trophy_bg") as IBitmapWrapperWindow;
         if(_loc7_ != null)
         {
            _loc8_ = _loc7_.content as BitmapData;
            _loc9_.bitmap = _loc8_.clone();
         }
      }
      
      private function hideInterface() : void
      {
         if(this._window != null)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      private function onMouseEvent(param1:WindowMouseEvent) : void
      {
         var _loc2_:IWindow = param1.target as IWindow;
         var _loc3_:String = _loc2_.name;
         switch(_loc3_)
         {
            case "open":
            case "close":
               this.hideInterface();
         }
         this.hideInterface();
      }
   }
}
