package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1978:int;
      
      private var var_2204:String;
      
      private var var_1021:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1978 = param1.readInteger();
         this.var_2204 = param1.readString();
         this.var_1021 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1978;
      }
      
      public function get figureString() : String
      {
         return this.var_2204;
      }
      
      public function get gender() : String
      {
         return this.var_1021;
      }
   }
}
