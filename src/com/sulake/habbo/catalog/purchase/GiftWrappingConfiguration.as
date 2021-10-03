package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1531:Boolean = false;
      
      private var var_1606:int;
      
      private var var_1591:Array;
      
      private var var_703:Array;
      
      private var var_704:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1531 = _loc2_.isWrappingEnabled;
         this.var_1606 = _loc2_.wrappingPrice;
         this.var_1591 = _loc2_.stuffTypes;
         this.var_703 = _loc2_.boxTypes;
         this.var_704 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1531;
      }
      
      public function get price() : int
      {
         return this.var_1606;
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
   }
}
