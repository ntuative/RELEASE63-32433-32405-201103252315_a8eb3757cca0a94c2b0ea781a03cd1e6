package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_676:String;
      
      private var var_1040:String;
      
      private var var_2678:String;
      
      private var var_1649:String;
      
      private var var_2677:int;
      
      private var var_2680:String;
      
      private var var_2681:int;
      
      private var var_2675:int;
      
      private var var_2679:int;
      
      private var _respectLeft:int;
      
      private var var_818:int;
      
      private var var_2676:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_676 = param1.readString();
         this.var_1040 = param1.readString();
         this.var_2678 = param1.readString();
         this.var_1649 = param1.readString();
         this.var_2677 = param1.readInteger();
         this.var_2680 = param1.readString();
         this.var_2681 = param1.readInteger();
         this.var_2675 = param1.readInteger();
         this.var_2679 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_818 = param1.readInteger();
         this.var_2676 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_676;
      }
      
      public function get sex() : String
      {
         return this.var_1040;
      }
      
      public function get customData() : String
      {
         return this.var_2678;
      }
      
      public function get realName() : String
      {
         return this.var_1649;
      }
      
      public function get tickets() : int
      {
         return this.var_2677;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2680;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2681;
      }
      
      public function get directMail() : int
      {
         return this.var_2675;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2679;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_818;
      }
      
      public function get identityId() : int
      {
         return this.var_2676;
      }
   }
}
