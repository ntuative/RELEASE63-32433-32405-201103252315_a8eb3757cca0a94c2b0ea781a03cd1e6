package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_867:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2406:int;
      
      private var var_2407:int;
      
      private var _color:uint;
      
      private var var_1091:int;
      
      private var var_2551:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_867);
         this.var_2406 = param1;
         this.var_2407 = param2;
         this._color = param3;
         this.var_1091 = param4;
         this.var_2551 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2406;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2407;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1091;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2551;
      }
   }
}
