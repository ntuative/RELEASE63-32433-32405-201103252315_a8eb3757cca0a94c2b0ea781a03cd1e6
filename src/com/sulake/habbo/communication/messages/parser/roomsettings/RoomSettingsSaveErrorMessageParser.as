package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1957:int = 1;
      
      public static const const_1933:int = 2;
      
      public static const const_1865:int = 3;
      
      public static const const_1910:int = 4;
      
      public static const const_1550:int = 5;
      
      public static const const_1816:int = 6;
      
      public static const const_1710:int = 7;
      
      public static const const_1592:int = 8;
      
      public static const const_1819:int = 9;
      
      public static const const_1623:int = 10;
      
      public static const const_1505:int = 11;
      
      public static const const_1470:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1714:int;
      
      private var var_1475:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1714 = param1.readInteger();
         this.var_1475 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1714;
      }
      
      public function get info() : String
      {
         return this.var_1475;
      }
   }
}
