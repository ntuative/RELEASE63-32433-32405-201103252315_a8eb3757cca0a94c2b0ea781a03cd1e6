package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1335:int;
      
      private var var_299:String;
      
      private var var_2831:int;
      
      private var var_2154:int;
      
      private var var_1595:int;
      
      private var var_2832:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1335 = param1.readInteger();
         this.var_299 = param1.readString();
         this.var_2831 = param1.readInteger();
         this.var_2154 = param1.readInteger();
         this.var_1595 = param1.readInteger();
         this.var_2832 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_299;
      }
      
      public function get level() : int
      {
         return this.var_1335;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2831;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2154;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1595;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2832;
      }
   }
}
