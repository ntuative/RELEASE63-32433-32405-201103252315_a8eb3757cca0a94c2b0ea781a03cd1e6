package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2614:String;
      
      private var var_2388:int;
      
      private var var_2612:int;
      
      private var var_2387:String;
      
      private var var_2613:int;
      
      private var var_1968:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2614 = param1.readString();
         this.var_2388 = param1.readInteger();
         this.var_2612 = param1.readInteger();
         this.var_2387 = param1.readString();
         this.var_2613 = param1.readInteger();
         this.var_1968 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2614;
      }
      
      public function get unitPort() : int
      {
         return this.var_2388;
      }
      
      public function get worldId() : int
      {
         return this.var_2612;
      }
      
      public function get castLibs() : String
      {
         return this.var_2387;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2613;
      }
      
      public function get nodeId() : int
      {
         return this.var_1968;
      }
   }
}
