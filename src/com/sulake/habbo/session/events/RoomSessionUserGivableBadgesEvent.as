package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserGivableBadgesEvent extends RoomSessionEvent
   {
      
      public static const const_67:String = "RSUBE_GIVABLE_BADGES";
       
      
      private var var_285:Array;
      
      public function RoomSessionUserGivableBadgesEvent(param1:IRoomSession, param2:Array, param3:Boolean = false, param4:Boolean = false)
      {
         this.var_285 = [];
         super(const_67,param1,param3,param4);
         this.var_285 = param2;
      }
      
      public function get badges() : Array
      {
         return this.var_285;
      }
   }
}
