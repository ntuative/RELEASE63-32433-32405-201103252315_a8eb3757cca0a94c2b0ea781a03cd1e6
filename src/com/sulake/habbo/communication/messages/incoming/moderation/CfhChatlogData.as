package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1656:int;
      
      private var var_2302:int;
      
      private var var_1455:int;
      
      private var var_2301:int;
      
      private var var_117:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1656 = param1.readInteger();
         this.var_2302 = param1.readInteger();
         this.var_1455 = param1.readInteger();
         this.var_2301 = param1.readInteger();
         this.var_117 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1656);
      }
      
      public function get callId() : int
      {
         return this.var_1656;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2302;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1455;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2301;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_117;
      }
   }
}
