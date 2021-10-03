package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_351:int;
      
      private var var_2211:int;
      
      private var var_2682:Boolean;
      
      private var var_2196:int;
      
      private var _ownerName:String;
      
      private var var_117:RoomData;
      
      private var var_713:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_351 = param1.readInteger();
         this.var_2211 = param1.readInteger();
         this.var_2682 = param1.readBoolean();
         this.var_2196 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_117 = new RoomData(param1);
         this.var_713 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_117 != null)
         {
            this.var_117.dispose();
            this.var_117 = null;
         }
         if(this.var_713 != null)
         {
            this.var_713.dispose();
            this.var_713 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_351;
      }
      
      public function get userCount() : int
      {
         return this.var_2211;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2682;
      }
      
      public function get ownerId() : int
      {
         return this.var_2196;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_117;
      }
      
      public function get event() : RoomData
      {
         return this.var_713;
      }
   }
}
