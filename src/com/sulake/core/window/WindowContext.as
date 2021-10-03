package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_433:uint = 0;
      
      public static const const_1519:uint = 1;
      
      public static const const_2012:int = 0;
      
      public static const const_2011:int = 1;
      
      public static const const_2008:int = 2;
      
      public static const const_1961:int = 3;
      
      public static const const_1494:int = 4;
      
      public static const const_398:int = 5;
      
      public static var var_400:IEventQueue;
      
      private static var var_639:IEventProcessor;
      
      private static var var_1856:uint = const_433;
      
      private static var stage:Stage;
      
      private static var var_153:IWindowRenderer;
       
      
      private var var_2604:EventProcessorState;
      
      private var var_2603:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_215:DisplayObjectContainer;
      
      protected var var_2905:Boolean = true;
      
      protected var var_1299:Error;
      
      protected var var_2086:int = -1;
      
      protected var var_1298:IInternalWindowServices;
      
      protected var var_1563:IWindowParser;
      
      protected var var_2857:IWindowFactory;
      
      protected var var_150:IDesktopWindow;
      
      protected var var_1562:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_566:Boolean = false;
      
      private var var_2605:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_153 = param2;
         this._localization = param4;
         this.var_215 = param5;
         this.var_1298 = new ServiceManager(this,param5);
         this.var_2857 = param3;
         this.var_1563 = new WindowParser(this);
         this.var_2603 = param7;
         if(!stage)
         {
            if(this.var_215 is Stage)
            {
               stage = this.var_215 as Stage;
            }
            else if(this.var_215.stage)
            {
               stage = this.var_215.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_150 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_215.addChild(this.var_150.getDisplayObject());
         this.var_215.doubleClickEnabled = true;
         this.var_215.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this.var_2604 = new EventProcessorState(var_153,this.var_150,this.var_150,null,this.var_2603);
         inputMode = const_433;
         this.var_1562 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1856;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_400)
         {
            if(var_400 is IDisposable)
            {
               IDisposable(var_400).dispose();
            }
         }
         if(var_639)
         {
            if(var_639 is IDisposable)
            {
               IDisposable(var_639).dispose();
            }
         }
         switch(value)
         {
            case const_433:
               var_400 = new MouseEventQueue(stage);
               var_639 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1519:
               var_400 = new TabletEventQueue(stage);
               var_639 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_433;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_215.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_215.removeChild(IGraphicContextHost(this.var_150).getGraphicContext(true) as DisplayObject);
            this.var_150.destroy();
            this.var_150 = null;
            this.var_1562.destroy();
            this.var_1562 = null;
            if(this.var_1298 is IDisposable)
            {
               IDisposable(this.var_1298).dispose();
            }
            this.var_1298 = null;
            this.var_1563.dispose();
            this.var_1563 = null;
            var_153 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1299;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2086;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1299 = param2;
         this.var_2086 = param1;
         if(this.var_2905)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1299 = null;
         this.var_2086 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1298;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1563;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2857;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_150;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_150.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.method_7(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1494,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1562;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_150,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_150)
         {
            this.var_150 = null;
         }
         if(param1.state != WindowState.const_514)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_153.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_566 = true;
         if(this.var_1299)
         {
            throw this.var_1299;
         }
         var_639.process(this.var_2604,var_400);
         this.var_566 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2605 = true;
         var_153.update(param1);
         this.var_2605 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_150 != null && !this.var_150.disposed)
         {
            if(this.var_215 is Stage)
            {
               this.var_150.width = Stage(this.var_215).stageWidth;
               this.var_150.height = Stage(this.var_215).stageHeight;
            }
            else
            {
               this.var_150.width = this.var_215.width;
               this.var_150.height = this.var_215.height;
            }
         }
      }
   }
}
