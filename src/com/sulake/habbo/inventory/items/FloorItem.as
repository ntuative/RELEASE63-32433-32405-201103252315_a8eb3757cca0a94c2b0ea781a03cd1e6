package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2075:String;
      
      protected var var_1316:Number;
      
      protected var var_2845:Boolean;
      
      protected var var_2844:Boolean;
      
      protected var var_2413:Boolean;
      
      protected var var_2475:Boolean;
      
      protected var var_2846:int;
      
      protected var var_2415:int;
      
      protected var var_2414:int;
      
      protected var var_2419:int;
      
      protected var var_1978:String;
      
      protected var var_2085:int;
      
      protected var var_992:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2413 = param5;
         this.var_2844 = param6;
         this.var_2845 = param7;
         this.var_2475 = param8;
         this.var_2075 = param9;
         this.var_1316 = param10;
         this.var_2846 = param11;
         this.var_2415 = param12;
         this.var_2414 = param13;
         this.var_2419 = param14;
         this.var_1978 = param15;
         this.var_2085 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2075;
      }
      
      public function get extra() : Number
      {
         return this.var_1316;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2845;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2844;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2413;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2475;
      }
      
      public function get expires() : int
      {
         return this.var_2846;
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
      
      public function get slotId() : String
      {
         return this.var_1978;
      }
      
      public function get songId() : int
      {
         return this.var_2085;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_992 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_992;
      }
   }
}
