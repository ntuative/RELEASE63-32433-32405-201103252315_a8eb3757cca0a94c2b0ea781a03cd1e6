package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_380:int;
      
      private var var_2131:int;
      
      private var var_1924:String;
      
      private var _x:int = 0;
      
      private var var_165:int = 0;
      
      private var var_382:int = 0;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         this.var_380 = param1;
         this.var_2131 = param2;
         this.var_1924 = param3;
         this._x = param4;
         this.var_165 = param5;
         this.var_382 = param6;
         this._roomId = param7;
         this._roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(this.var_2131)
         {
            case RoomObjectCategoryEnum.const_28:
               return [this.var_380 + " " + this._x + " " + this.var_165 + " " + this.var_382];
            case RoomObjectCategoryEnum.const_26:
               return [this.var_380 + " " + this.var_1924];
            default:
               return [];
         }
      }
   }
}
