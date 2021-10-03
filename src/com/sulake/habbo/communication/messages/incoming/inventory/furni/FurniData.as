package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2185:int;
      
      private var var_1502:String;
      
      private var _objId:int;
      
      private var var_1927:int;
      
      private var _category:int;
      
      private var var_2075:String;
      
      private var var_2209:Boolean;
      
      private var var_2208:Boolean;
      
      private var var_2206:Boolean;
      
      private var var_2205:Boolean;
      
      private var var_2207:int;
      
      private var var_1316:int;
      
      private var var_1978:String = "";
      
      private var var_2085:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2185 = param1;
         this.var_1502 = param2;
         this._objId = param3;
         this.var_1927 = param4;
         this._category = param5;
         this.var_2075 = param6;
         this.var_2209 = param7;
         this.var_2208 = param8;
         this.var_2206 = param9;
         this.var_2205 = param10;
         this.var_2207 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1978 = param1;
         this.var_1316 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2185;
      }
      
      public function get itemType() : String
      {
         return this.var_1502;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1927;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2075;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2209;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2208;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2206;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2205;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2207;
      }
      
      public function get slotId() : String
      {
         return this.var_1978;
      }
      
      public function get songId() : int
      {
         return this.var_2085;
      }
      
      public function get extra() : int
      {
         return this.var_1316;
      }
   }
}
