package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2181:int;
      
      private var var_1502:String;
      
      private var var_2418:int;
      
      private var var_2417:int;
      
      private var _category:int;
      
      private var var_2075:String;
      
      private var var_1316:int;
      
      private var var_2416:int;
      
      private var var_2415:int;
      
      private var var_2414:int;
      
      private var var_2419:int;
      
      private var var_2413:Boolean;
      
      private var var_2915:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2181 = param1;
         this.var_1502 = param2;
         this.var_2418 = param3;
         this.var_2417 = param4;
         this._category = param5;
         this.var_2075 = param6;
         this.var_1316 = param7;
         this.var_2416 = param8;
         this.var_2415 = param9;
         this.var_2414 = param10;
         this.var_2419 = param11;
         this.var_2413 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2181;
      }
      
      public function get itemType() : String
      {
         return this.var_1502;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2418;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2417;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2075;
      }
      
      public function get extra() : int
      {
         return this.var_1316;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2416;
      }
      
      public function get creationDay() : int
      {
         return this.var_2415;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2414;
      }
      
      public function get creationYear() : int
      {
         return this.var_2419;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2413;
      }
      
      public function get songID() : int
      {
         return this.var_1316;
      }
   }
}
