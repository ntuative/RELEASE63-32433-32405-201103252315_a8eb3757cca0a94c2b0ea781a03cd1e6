package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2270:Number = 0.0;
      
      private var var_2269:Number = 0.0;
      
      private var var_2392:Number = 0.0;
      
      private var var_2393:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2270 = param1;
         this.var_2269 = param2;
         this.var_2392 = param3;
         this.var_2393 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2270;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2269;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2392;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2393;
      }
   }
}
