package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_380:int;
      
      private var var_2184:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_380 = param1;
         this.var_2184 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_380,this.var_2184];
      }
      
      public function dispose() : void
      {
      }
   }
}
