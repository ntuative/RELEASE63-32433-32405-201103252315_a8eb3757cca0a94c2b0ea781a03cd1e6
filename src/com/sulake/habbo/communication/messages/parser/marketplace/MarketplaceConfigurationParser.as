package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1531:Boolean;
      
      private var var_2166:int;
      
      private var var_1603:int;
      
      private var var_1602:int;
      
      private var var_2165:int;
      
      private var var_2164:int;
      
      private var var_2168:int;
      
      private var var_2162:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1531;
      }
      
      public function get commission() : int
      {
         return this.var_2166;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1603;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1602;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2164;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2165;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2168;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2162;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1531 = param1.readBoolean();
         this.var_2166 = param1.readInteger();
         this.var_1603 = param1.readInteger();
         this.var_1602 = param1.readInteger();
         this.var_2164 = param1.readInteger();
         this.var_2165 = param1.readInteger();
         this.var_2168 = param1.readInteger();
         this.var_2162 = param1.readInteger();
         return true;
      }
   }
}
