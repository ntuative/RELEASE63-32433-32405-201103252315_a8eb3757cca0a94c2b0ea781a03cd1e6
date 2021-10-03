package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2914:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_150 = param1.desktop;
         var_73 = param1.var_1290 as WindowController;
         var_177 = param1.var_1289 as WindowController;
         var_153 = param1.renderer;
         var_852 = param1.var_1291;
         param2.begin();
         param2.end();
         param1.desktop = var_150;
         param1.var_1290 = var_73;
         param1.var_1289 = var_177;
         param1.renderer = var_153;
         param1.var_1291 = var_852;
      }
   }
}
