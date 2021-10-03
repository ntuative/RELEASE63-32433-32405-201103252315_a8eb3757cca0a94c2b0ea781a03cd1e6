package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_165:Number = 0;
      
      private var var_164:Number = 0;
      
      private var var_382:int = 0;
      
      private var var_553:int = 0;
      
      private var var_673:int = 0;
      
      private var _type:int = 0;
      
      private var var_2920:String = "";
      
      private var var_1316:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2207:int = 0;
      
      private var var_2818:String = null;
      
      private var var_192:Boolean = false;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_192 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_192)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_165;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_165 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_164;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_164 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_382;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_382 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_553;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_553 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_673;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_673 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_192)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_192)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_192)
         {
            this._data = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return this.var_2818;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2818 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1316;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_1316 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2207;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2207 = param1;
         }
      }
   }
}
