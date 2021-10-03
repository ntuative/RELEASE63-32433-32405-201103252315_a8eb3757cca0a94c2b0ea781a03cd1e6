package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2764:int;
      
      private var var_2765:int;
      
      private var var_2766:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2764 = param1;
         this.var_2765 = param2;
         this.var_2766 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2764,this.var_2765,this.var_2766];
      }
      
      public function dispose() : void
      {
      }
   }
}
