package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFlatControlUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var include:Boolean = false;
      
      private var var_2836:String;
      
      public function RoomObjectAvatarFlatControlUpdateMessage(param1:String)
      {
         super();
         this.var_2836 = param1;
         if(param1 != null && param1.indexOf("useradmin") != -1)
         {
            this.include = true;
         }
      }
      
      public function get isAdmin() : Boolean
      {
         return this.include;
      }
      
      public function get rawData() : String
      {
         return this.var_2836;
      }
   }
}
