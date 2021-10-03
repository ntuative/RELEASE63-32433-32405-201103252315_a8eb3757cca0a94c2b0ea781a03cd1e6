package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_666:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1260:String = "inventory_effects";
      
      public static const const_1220:String = "inventory_badges";
      
      public static const const_1655:String = "inventory_clothes";
      
      public static const const_1610:String = "inventory_furniture";
       
      
      private var var_2615:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_666);
         this.var_2615 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2615;
      }
   }
}
