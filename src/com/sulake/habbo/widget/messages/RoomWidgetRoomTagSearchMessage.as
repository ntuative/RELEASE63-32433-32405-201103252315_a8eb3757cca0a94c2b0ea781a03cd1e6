package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_784:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_2331:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_784);
         this.var_2331 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2331;
      }
   }
}
