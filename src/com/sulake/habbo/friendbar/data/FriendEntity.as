package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1021:int;
      
      private var var_836:Boolean;
      
      private var var_1651:Boolean;
      
      private var var_676:String;
      
      private var var_1350:int;
      
      private var var_1650:String;
      
      private var var_1652:String;
      
      private var var_1649:String;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1649 = param3;
         this.var_1650 = param4;
         this.var_1021 = param5;
         this.var_836 = param6;
         this.var_1651 = param7;
         this.var_676 = param8;
         this.var_1350 = param9;
         this.var_1652 = param10;
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
      
      public function get allowFollow() : Boolean
      {
         return this.var_1651;
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
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_1021 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_836 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this.var_1651 = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_676 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1350 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1650 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1652 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1649 = param1;
      }
   }
}
