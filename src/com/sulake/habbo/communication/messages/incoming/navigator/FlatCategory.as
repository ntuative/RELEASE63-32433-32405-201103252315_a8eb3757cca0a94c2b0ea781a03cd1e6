package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1968:int;
      
      private var var_2160:String;
      
      private var var_322:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1968 = param1.readInteger();
         this.var_2160 = param1.readString();
         this.var_322 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1968;
      }
      
      public function get nodeName() : String
      {
         return this.var_2160;
      }
      
      public function get visible() : Boolean
      {
         return this.var_322;
      }
   }
}
