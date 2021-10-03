package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_413:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1101:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1157:String = "RWOCM_PIXELS";
      
      public static const const_1236:String = "RWOCM_CREDITS";
       
      
      private var var_2151:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_413);
         this.var_2151 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2151;
      }
   }
}
