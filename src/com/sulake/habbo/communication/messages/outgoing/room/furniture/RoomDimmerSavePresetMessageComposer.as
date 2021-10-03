package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2406:int;
      
      private var var_2407:int;
      
      private var var_2404:String;
      
      private var var_2405:int;
      
      private var var_2403:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2406 = param1;
         this.var_2407 = param2;
         this.var_2404 = param3;
         this.var_2405 = param4;
         this.var_2403 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2406,this.var_2407,this.var_2404,this.var_2405,int(this.var_2403)];
      }
      
      public function dispose() : void
      {
      }
   }
}
