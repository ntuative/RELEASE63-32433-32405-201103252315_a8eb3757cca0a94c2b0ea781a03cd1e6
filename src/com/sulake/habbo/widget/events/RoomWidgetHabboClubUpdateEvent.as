package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_233:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2228:int = 0;
      
      private var var_2225:int = 0;
      
      private var var_2226:int = 0;
      
      private var var_2227:Boolean = false;
      
      private var var_2125:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_233,param6,param7);
         this.var_2228 = param1;
         this.var_2225 = param2;
         this.var_2226 = param3;
         this.var_2227 = param4;
         this.var_2125 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2228;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2225;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2226;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2227;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2125;
      }
   }
}
