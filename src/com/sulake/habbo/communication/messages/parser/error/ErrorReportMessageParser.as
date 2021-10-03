package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1714:int;
      
      private var var_1768:int;
      
      private var var_1767:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1768 = param1.readInteger();
         this.var_1714 = param1.readInteger();
         this.var_1767 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1714 = 0;
         this.var_1768 = 0;
         this.var_1767 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1714;
      }
      
      public function get messageId() : int
      {
         return this.var_1768;
      }
      
      public function get timestamp() : String
      {
         return this.var_1767;
      }
   }
}
