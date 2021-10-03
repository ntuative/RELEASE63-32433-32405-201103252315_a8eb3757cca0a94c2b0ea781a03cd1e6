package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_2085:int;
      
      private var var_1922:Number;
      
      private var var_2724:Number;
      
      private var var_2723:int;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number)
      {
         super();
         this.var_2085 = param1;
         this.var_1922 = param2;
         this.var_2724 = param3;
         this.var_2723 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_2085;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1922 < 0)
         {
            return 0;
         }
         return this.var_1922 + (getTimer() - this.var_2723) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2724;
      }
   }
}
