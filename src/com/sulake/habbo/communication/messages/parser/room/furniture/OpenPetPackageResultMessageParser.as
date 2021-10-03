package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_380:int = 0;
      
      private var var_1734:int = 0;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_380;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1734;
      }
      
      public function flush() : Boolean
      {
         this.var_380 = 0;
         this.var_1734 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_380 = param1.readInteger();
         this.var_1734 = param1.readInteger();
         return true;
      }
   }
}
