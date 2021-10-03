package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1571:String = "WE_CREATE";
      
      public static const const_1704:String = "WE_CREATED";
      
      public static const const_1542:String = "WE_DESTROY";
      
      public static const const_294:String = "WE_DESTROYED";
      
      public static const const_1528:String = "WE_OPEN";
      
      public static const const_1516:String = "WE_OPENED";
      
      public static const const_1459:String = "WE_CLOSE";
      
      public static const const_1730:String = "WE_CLOSED";
      
      public static const const_1594:String = "WE_FOCUS";
      
      public static const const_299:String = "WE_FOCUSED";
      
      public static const const_1717:String = "WE_UNFOCUS";
      
      public static const const_1581:String = "WE_UNFOCUSED";
      
      public static const const_1580:String = "WE_ACTIVATE";
      
      public static const const_1538:String = "WE_ACTIVATED";
      
      public static const const_1668:String = "WE_DEACTIVATE";
      
      public static const const_504:String = "WE_DEACTIVATED";
      
      public static const const_463:String = "WE_SELECT";
      
      public static const const_61:String = "WE_SELECTED";
      
      public static const const_674:String = "WE_UNSELECT";
      
      public static const const_820:String = "WE_UNSELECTED";
      
      public static const const_1843:String = "WE_ATTACH";
      
      public static const const_1807:String = "WE_ATTACHED";
      
      public static const const_2023:String = "WE_DETACH";
      
      public static const const_1851:String = "WE_DETACHED";
      
      public static const const_1450:String = "WE_LOCK";
      
      public static const const_1667:String = "WE_LOCKED";
      
      public static const const_1681:String = "WE_UNLOCK";
      
      public static const const_1509:String = "WE_UNLOCKED";
      
      public static const const_731:String = "WE_ENABLE";
      
      public static const const_287:String = "WE_ENABLED";
      
      public static const const_851:String = "WE_DISABLE";
      
      public static const const_220:String = "WE_DISABLED";
      
      public static const const_1650:String = "WE_RELOCATE";
      
      public static const const_358:String = "WE_RELOCATED";
      
      public static const const_1617:String = "WE_RESIZE";
      
      public static const const_47:String = "WE_RESIZED";
      
      public static const WINDOW_EVENT_MINIMIZE:String = "WE_MINIMIZE";
      
      public static const const_1541:String = "WE_MINIMIZED";
      
      public static const const_1726:String = "WE_MAXIMIZE";
      
      public static const const_1466:String = "WE_MAXIMIZED";
      
      public static const const_1632:String = "WE_RESTORE";
      
      public static const const_1719:String = "WE_RESTORED";
      
      public static const const_1927:String = "WE_ARRANGE";
      
      public static const const_1880:String = "WE_ARRANGED";
      
      public static const const_108:String = "WE_UPDATE";
      
      public static const const_1984:String = "WE_UPDATED";
      
      public static const const_1820:String = "WE_CHILD_RELOCATE";
      
      public static const const_444:String = "WE_CHILD_RELOCATED";
      
      public static const const_1963:String = "WE_CHILD_RESIZE";
      
      public static const const_323:String = "WE_CHILD_RESIZED";
      
      public static const const_1879:String = "WE_CHILD_REMOVE";
      
      public static const const_516:String = "WE_CHILD_REMOVED";
      
      public static const const_1916:String = "WE_PARENT_RELOCATE";
      
      public static const const_1904:String = "WE_PARENT_RELOCATED";
      
      public static const const_1891:String = "WE_PARENT_RESIZE";
      
      public static const const_1616:String = "WE_PARENT_RESIZED";
      
      public static const const_192:String = "WE_OK";
      
      public static const const_896:String = "WE_CANCEL";
      
      public static const const_105:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_599:String = "WE_SCROLL";
      
      public static const const_173:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_473:IWindow;
      
      protected var var_1567:Boolean;
      
      protected var var_1566:Boolean;
      
      private var var_1990:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow = null, param3:IWindow = null, param4:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_473 = param3;
         this.var_1567 = false;
         this.var_1566 = param4;
         super(param1);
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = false ? POOL.pop() : new WindowEvent(param1);
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_473 = param3;
         _loc5_.var_1566 = param4;
         _loc5_.var_1990 = false;
         return _loc5_;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_473;
      }
      
      override public function get cancelable() : Boolean
      {
         return this.var_1566;
      }
      
      public function recycle() : void
      {
         if(this.var_1990)
         {
            throw new Error("Event already recycled!");
         }
         this._type = null;
         this.var_473 = null;
         this._window = null;
         this.var_1990 = true;
         this.var_1567 = false;
         POOL.push(this);
      }
      
      override public function clone() : Event
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1567 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1567;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","cancelable","window");
      }
   }
}
