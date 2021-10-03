package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2864:uint;
      
      private var var_151:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_264:IWindowContext;
      
      private var var_1075:IMouseDraggingService;
      
      private var var_1076:IMouseScalingService;
      
      private var var_1078:IMouseListenerService;
      
      private var var_1077:IFocusManagerService;
      
      private var var_1079:IToolTipAgentService;
      
      private var var_1080:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2864 = 0;
         this.var_151 = param2;
         this.var_264 = param1;
         this.var_1075 = new WindowMouseDragger(param2);
         this.var_1076 = new WindowMouseScaler(param2);
         this.var_1078 = new WindowMouseListener(param2);
         this.var_1077 = new FocusManager(param2);
         this.var_1079 = new WindowToolTipAgent(param2);
         this.var_1080 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1075 != null)
         {
            this.var_1075.dispose();
            this.var_1075 = null;
         }
         if(this.var_1076 != null)
         {
            this.var_1076.dispose();
            this.var_1076 = null;
         }
         if(this.var_1078 != null)
         {
            this.var_1078.dispose();
            this.var_1078 = null;
         }
         if(this.var_1077 != null)
         {
            this.var_1077.dispose();
            this.var_1077 = null;
         }
         if(this.var_1079 != null)
         {
            this.var_1079.dispose();
            this.var_1079 = null;
         }
         if(this.var_1080 != null)
         {
            this.var_1080.dispose();
            this.var_1080 = null;
         }
         this.var_151 = null;
         this.var_264 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1075;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1076;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1078;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1077;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1079;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1080;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
