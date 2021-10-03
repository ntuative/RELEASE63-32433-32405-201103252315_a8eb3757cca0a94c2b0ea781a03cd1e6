package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserChangeMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      private var var_676:String;
      
      private var var_1040:String;
      
      private var var_2019:String;
      
      private var var_2252:int;
      
      public function UserChangeMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get figure() : String
      {
         return this.var_676;
      }
      
      public function get sex() : String
      {
         return this.var_1040;
      }
      
      public function get customInfo() : String
      {
         return this.var_2019;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2252;
      }
      
      public function flush() : Boolean
      {
         this._id = 0;
         this.var_676 = "";
         this.var_1040 = "";
         this.var_2019 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = param1.readInteger();
         this.var_676 = param1.readString();
         this.var_1040 = param1.readString();
         this.var_2019 = param1.readString();
         this.var_2252 = param1.readInteger();
         if(this.var_1040)
         {
            this.var_1040 = this.var_1040.toUpperCase();
         }
         return true;
      }
   }
}
