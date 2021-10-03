package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1783:Boolean;
      
      private var var_2502:int;
      
      private var var_416:Boolean;
      
      private var var_1162:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1783;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2502;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1162;
      }
      
      public function get owner() : Boolean
      {
         return this.var_416;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1162 != null)
         {
            this.var_1162.dispose();
            this.var_1162 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1783 = param1.readBoolean();
         if(this.var_1783)
         {
            this.var_2502 = param1.readInteger();
            this.var_416 = param1.readBoolean();
         }
         else
         {
            this.var_1162 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
