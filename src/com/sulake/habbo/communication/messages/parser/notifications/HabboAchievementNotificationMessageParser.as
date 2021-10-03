package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1335:int;
      
      private var var_1893:int;
      
      private var var_2154:int;
      
      private var var_1595:int;
      
      private var var_1336:int;
      
      private var var_2343:String = "";
      
      private var var_2344:String = "";
      
      private var var_2345:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1335 = param1.readInteger();
         this.var_2343 = param1.readString();
         this.var_1893 = param1.readInteger();
         this.var_2154 = param1.readInteger();
         this.var_1595 = param1.readInteger();
         this.var_1336 = param1.readInteger();
         this.var_2345 = param1.readInteger();
         this.var_2344 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1335;
      }
      
      public function get points() : int
      {
         return this.var_1893;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2154;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1595;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1336;
      }
      
      public function get badgeID() : String
      {
         return this.var_2343;
      }
      
      public function get achievementID() : int
      {
         return this.var_2345;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2344;
      }
   }
}
