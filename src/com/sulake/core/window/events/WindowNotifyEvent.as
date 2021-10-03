package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1618:String = "WN_CRETAE";
      
      public static const const_1703:String = "WN_CREATED";
      
      public static const const_1138:String = "WN_DESTROY";
      
      public static const const_1027:String = "WN_DESTROYED";
      
      public static const const_1174:String = "WN_OPEN";
      
      public static const const_1122:String = "WN_OPENED";
      
      public static const const_1237:String = "WN_CLOSE";
      
      public static const const_1164:String = "WN_CLOSED";
      
      public static const const_1238:String = "WN_FOCUS";
      
      public static const const_1107:String = "WN_FOCUSED";
      
      public static const const_1152:String = "WN_UNFOCUS";
      
      public static const const_1171:String = "WN_UNFOCUSED";
      
      public static const const_1224:String = "WN_ACTIVATE";
      
      public static const const_383:String = "WN_ACTVATED";
      
      public static const const_1255:String = "WN_DEACTIVATE";
      
      public static const const_1077:String = "WN_DEACTIVATED";
      
      public static const const_543:String = "WN_SELECT";
      
      public static const const_396:String = "WN_SELECTED";
      
      public static const const_885:String = "WN_UNSELECT";
      
      public static const const_871:String = "WN_UNSELECTED";
      
      public static const const_1102:String = "WN_LOCK";
      
      public static const const_1181:String = "WN_LOCKED";
      
      public static const const_1098:String = "WN_UNLOCK";
      
      public static const const_1039:String = "WN_UNLOCKED";
      
      public static const const_1229:String = "WN_ENABLE";
      
      public static const const_762:String = "WN_ENABLED";
      
      public static const const_1126:String = "WN_DISABLE";
      
      public static const const_654:String = "WN_DISABLED";
      
      public static const const_765:String = "WN_RESIZE";
      
      public static const const_202:String = "WN_RESIZED";
      
      public static const const_1129:String = "WN_RELOCATE";
      
      public static const const_475:String = "WN_RELOCATED";
      
      public static const const_1088:String = "WN_MINIMIZE";
      
      public static const const_1205:String = "WN_MINIMIZED";
      
      public static const const_1166:String = "WN_MAXIMIZE";
      
      public static const const_1185:String = "WN_MAXIMIZED";
      
      public static const const_1200:String = "WN_RESTORE";
      
      public static const const_1261:String = "WN_RESTORED";
      
      public static const const_393:String = "WN_CHILD_ADDED";
      
      public static const const_858:String = "WN_CHILD_REMOVED";
      
      public static const const_298:String = "WN_CHILD_RESIZED";
      
      public static const const_319:String = "WN_CHILD_RELOCATED";
      
      public static const WINDOW_NOTIFY_CHILD_ACTIVATED:String = "WN_CHILD_ACTIVATED";
      
      public static const const_533:String = "WN_PARENT_ADDED";
      
      public static const const_1142:String = "WN_PARENT_REMOVED";
      
      public static const const_544:String = "WN_PARENT_RESIZED";
      
      public static const const_1123:String = "WN_PARENT_RELOCATED";
      
      public static const const_676:String = "WN_PARENT_ACTIVATED";
      
      public static const const_465:String = "WN_STATE_UPDATED";
      
      public static const const_585:String = "WN_STYLE_UPDATED";
      
      public static const const_441:String = "WN_PARAM_UPDATED";
      
      public static const UNKNOWN:String = "UNKNOWN";
      
      private static const POOL:Array = [];
       
      
      private var _isRecycled:Boolean;
      
      public function WindowNotifyEvent()
      {
         super("",null,null);
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowNotifyEvent
      {
         var _loc5_:WindowNotifyEvent = false ? POOL.pop() : new WindowNotifyEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_473 = param3;
         _loc5_.var_1566 = param4;
         _loc5_._isRecycled = false;
         return _loc5_;
      }
      
      override public function recycle() : void
      {
         if(this._isRecycled)
         {
            throw new Error("Event already recycled!");
         }
         _type = null;
         var_473 = null;
         _window = null;
         this._isRecycled = true;
         POOL.push(this);
      }
      
      override public function clone() : Event
      {
         return allocate(type,_window,var_473,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
