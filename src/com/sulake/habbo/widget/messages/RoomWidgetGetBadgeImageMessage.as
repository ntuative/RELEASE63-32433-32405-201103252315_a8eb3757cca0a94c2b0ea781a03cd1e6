package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_875:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_299:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_875);
         this.var_299 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_299;
      }
   }
}
