package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageRequestedMessageParser implements IMessageParser
   {
       
      
      private var var_380:int = -1;
      
      private var var_1210:int = -1;
      
      private var var_1841:int = -1;
      
      private var _color:String = "";
      
      public function OpenPetPackageRequestedMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_380;
      }
      
      public function get petType() : int
      {
         return this.var_1210;
      }
      
      public function get breed() : int
      {
         return this.var_1841;
      }
      
      public function get color() : String
      {
         return this._color;
      }
      
      public function flush() : Boolean
      {
         this.var_380 = -1;
         this.var_1210 = -1;
         this.var_1841 = -1;
         this._color = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_380 = param1.readInteger();
         this.var_1210 = param1.readInteger();
         this.var_1841 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
   }
}
