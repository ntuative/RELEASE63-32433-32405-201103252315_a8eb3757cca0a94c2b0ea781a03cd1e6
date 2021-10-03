package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2102:int;
      
      private var var_2101:int;
      
      private var var_836:Boolean;
      
      private var var_2099:int;
      
      private var var_2100:int;
      
      private var var_2103:int;
      
      private var var_2104:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2102 = param1.readInteger();
         this.var_2101 = param1.readInteger();
         this.var_836 = param1.readBoolean();
         this.var_2099 = param1.readInteger();
         this.var_2100 = param1.readInteger();
         this.var_2103 = param1.readInteger();
         this.var_2104 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2102;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2101;
      }
      
      public function get online() : Boolean
      {
         return this.var_836;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2099;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2100;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2103;
      }
      
      public function get banCount() : int
      {
         return this.var_2104;
      }
   }
}
