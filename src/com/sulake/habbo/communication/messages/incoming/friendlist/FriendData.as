package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1021:int;
      
      private var var_836:Boolean;
      
      private var var_1733:Boolean;
      
      private var var_676:String;
      
      private var var_1350:int;
      
      private var var_1650:String;
      
      private var var_1652:String;
      
      private var var_1649:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1021 = param1.readInteger();
         this.var_836 = param1.readBoolean();
         this.var_1733 = param1.readBoolean();
         this.var_676 = param1.readString();
         this.var_1350 = param1.readInteger();
         this.var_1650 = param1.readString();
         this.var_1652 = param1.readString();
         this.var_1649 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1021;
      }
      
      public function get online() : Boolean
      {
         return this.var_836;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1733;
      }
      
      public function get figure() : String
      {
         return this.var_676;
      }
      
      public function get categoryId() : int
      {
         return this.var_1350;
      }
      
      public function get motto() : String
      {
         return this.var_1650;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1652;
      }
      
      public function get realName() : String
      {
         return this.var_1649;
      }
   }
}
