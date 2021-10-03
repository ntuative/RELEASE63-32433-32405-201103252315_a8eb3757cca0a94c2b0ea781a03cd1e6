package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_165:Number = 0;
      
      private var var_164:Number = 0;
      
      private var var_2139:Number = 0;
      
      private var var_2138:Number = 0;
      
      private var var_2140:Number = 0;
      
      private var var_2135:Number = 0;
      
      private var var_382:int = 0;
      
      private var var_2137:int = 0;
      
      private var var_336:Array;
      
      private var var_2136:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_336 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_165 = param3;
         this.var_164 = param4;
         this.var_2139 = param5;
         this.var_382 = param6;
         this.var_2137 = param7;
         this.var_2138 = param8;
         this.var_2140 = param9;
         this.var_2135 = param10;
         this.var_2136 = param11;
         this.var_336 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_165;
      }
      
      public function get z() : Number
      {
         return this.var_164;
      }
      
      public function get localZ() : Number
      {
         return this.var_2139;
      }
      
      public function get targetX() : Number
      {
         return this.var_2138;
      }
      
      public function get targetY() : Number
      {
         return this.var_2140;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2135;
      }
      
      public function get dir() : int
      {
         return this.var_382;
      }
      
      public function get dirHead() : int
      {
         return this.var_2137;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2136;
      }
      
      public function get actions() : Array
      {
         return this.var_336.slice();
      }
   }
}
