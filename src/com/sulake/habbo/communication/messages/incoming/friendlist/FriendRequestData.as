package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1208:int;
      
      private var var_2295:String;
      
      private var var_2296:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1208 = param1.readInteger();
         this.var_2295 = param1.readString();
         this.var_2296 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1208;
      }
      
      public function get requesterName() : String
      {
         return this.var_2295;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2296;
      }
   }
}
