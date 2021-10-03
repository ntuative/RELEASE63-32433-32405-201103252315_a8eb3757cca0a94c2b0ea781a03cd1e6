package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_702:String = "RWUAM_WHISPER_USER";
      
      public static const const_651:String = "RWUAM_IGNORE_USER";
      
      public static const const_723:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_472:String = "RWUAM_KICK_USER";
      
      public static const const_772:String = "RWUAM_BAN_USER";
      
      public static const const_876:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_866:String = "RWUAM_RESPECT_USER";
      
      public static const const_655:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_642:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_717:String = "RWUAM_START_TRADING";
      
      public static const const_917:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_505:String = "RWUAM_KICK_BOT";
      
      public static const const_706:String = "RWUAM_REPORT";
      
      public static const const_592:String = "RWUAM_PICKUP_PET";
      
      public static const const_1537:String = "RWUAM_TRAIN_PET";
      
      public static const const_584:String = " RWUAM_RESPECT_PET";
      
      public static const const_348:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_778:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
