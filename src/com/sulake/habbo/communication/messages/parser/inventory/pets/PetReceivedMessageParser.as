package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1877:Boolean;
      
      private var var_978:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1877 = param1.readBoolean();
         this.var_978 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_1877 + ", " + this.var_978.id + ", " + this.var_978.name + ", " + this.var_978.type + ", " + this.var_978.breed + ", " + this.pet.color);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_1877;
      }
      
      public function get pet() : PetData
      {
         return this.var_978;
      }
   }
}
