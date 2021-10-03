package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1248:String = "M";
      
      public static const const_1659:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_165:Number = 0;
      
      private var var_164:Number = 0;
      
      private var var_382:int = 0;
      
      private var _name:String = "";
      
      private var _userType:int = 0;
      
      private var var_1040:String = "";
      
      private var var_676:String = "";
      
      private var var_2600:String = "";
      
      private var var_2252:int;
      
      private var var_2250:int = 0;
      
      private var var_2601:String = "";
      
      private var var_2599:int = 0;
      
      private var var_2256:int = 0;
      
      private var var_2602:String = "";
      
      private var var_192:Boolean = false;
      
      public function UserMessageData(param1:int)
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
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_192)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this._userType;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_192)
         {
            this._userType = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1040;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_1040 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_676;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_676 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2600;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2600 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2252;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2252 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2250;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2250 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2601;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2601 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2599;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2599 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2256;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2256 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2602;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2602 = param1;
         }
      }
   }
}
