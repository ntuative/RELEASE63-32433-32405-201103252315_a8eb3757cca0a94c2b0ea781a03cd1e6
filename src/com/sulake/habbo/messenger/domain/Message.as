package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_901:int = 1;
      
      public static const const_880:int = 2;
      
      public static const const_637:int = 3;
      
      public static const const_1094:int = 4;
      
      public static const const_832:int = 5;
      
      public static const const_1175:int = 6;
       
      
      private var _type:int;
      
      private var var_1199:int;
      
      private var var_2223:String;
      
      private var var_2286:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1199 = param2;
         this.var_2223 = param3;
         this.var_2286 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2223;
      }
      
      public function get time() : String
      {
         return this.var_2286;
      }
      
      public function get senderId() : int
      {
         return this.var_1199;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
