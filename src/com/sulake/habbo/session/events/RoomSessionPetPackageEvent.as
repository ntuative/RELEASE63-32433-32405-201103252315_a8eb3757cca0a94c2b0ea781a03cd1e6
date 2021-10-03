package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetPackageEvent extends RoomSessionEvent
   {
      
      public static const const_566:String = "RSOPPE_OPEN_PET_PACKAGE_REQUESTED";
      
      public static const const_542:String = "RSOPPE_OPEN_PET_PACKAGE_RESULT";
       
      
      private var var_380:int = -1;
      
      private var var_1210:int = -1;
      
      private var var_1841:int = -1;
      
      private var _color:String = "";
      
      private var var_1734:int = 0;
      
      public function RoomSessionPetPackageEvent(param1:String, param2:IRoomSession, param3:int, param4:int, param5:int, param6:String, param7:int, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param8,param9);
         this.var_380 = param3;
         this.var_1210 = param4;
         this.var_1841 = param5;
         this._color = param6;
         this.var_1734 = param7;
      }
      
      public function get objectId() : int
      {
         return this.var_380;
      }
      
      public function get petType() : int
      {
         return this.var_1210;
      }
      
      public function get breed() : int
      {
         return this.var_1841;
      }
      
      public function get color() : String
      {
         return this._color;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1734;
      }
   }
}
