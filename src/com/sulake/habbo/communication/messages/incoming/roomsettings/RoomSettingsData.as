package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_455:int = 0;
      
      public static const const_187:int = 1;
      
      public static const const_112:int = 2;
      
      public static const const_724:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1705:String;
      
      private var var_2210:int;
      
      private var var_1350:int;
      
      private var var_2746:int;
      
      private var var_2770:int;
      
      private var var_855:Array;
      
      private var var_2745:Array;
      
      private var var_2771:int;
      
      private var var_2217:Boolean;
      
      private var var_2744:Boolean;
      
      private var var_2748:Boolean;
      
      private var var_2747:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2217;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2217 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2744;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2744 = param1;
      }
      
      public function get method_2() : Boolean
      {
         return this.var_2748;
      }
      
      public function set method_2(param1:Boolean) : void
      {
         this.var_2748 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2747;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2747 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1705;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1705 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2210;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2210 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1350;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1350 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2746;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2746 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2770;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2770 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_855;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_855 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2745;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2745 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2771;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2771 = param1;
      }
   }
}