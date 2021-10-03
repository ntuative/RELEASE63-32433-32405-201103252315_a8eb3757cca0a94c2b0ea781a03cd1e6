package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2755:Boolean;
      
      private var var_2754:int;
      
      private var var_1591:Array;
      
      private var var_703:Array;
      
      private var var_704:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2755;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2754;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1591;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_703;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_704;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1591 = [];
         this.var_703 = [];
         this.var_704 = [];
         this.var_2755 = param1.readBoolean();
         this.var_2754 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1591.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_703.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_704.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
