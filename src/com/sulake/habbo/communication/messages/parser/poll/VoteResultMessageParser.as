package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1202:String;
      
      private var var_1500:Array;
      
      private var var_1060:Array;
      
      private var var_1997:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1202;
      }
      
      public function get choices() : Array
      {
         return this.var_1500.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1060.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1997;
      }
      
      public function flush() : Boolean
      {
         this.var_1202 = "";
         this.var_1500 = [];
         this.var_1060 = [];
         this.var_1997 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1202 = param1.readString();
         this.var_1500 = [];
         this.var_1060 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1500.push(param1.readString());
            this.var_1060.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1997 = param1.readInteger();
         return true;
      }
   }
}
