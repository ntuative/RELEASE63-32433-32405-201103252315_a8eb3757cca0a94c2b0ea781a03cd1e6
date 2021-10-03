package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2652:Number;
      
      private var var_1821:Number;
      
      private var var_980:Number;
      
      private var var_524:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2652 = param1;
         this.var_1821 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_980 = param1;
         this.var_524 = 0;
      }
      
      public function update() : void
      {
         this.var_980 += this.var_1821;
         this.var_524 += this.var_980;
         if(this.var_524 > 0)
         {
            this.var_524 = 0;
            this.var_980 = this.var_2652 * -1 * this.var_980;
         }
      }
      
      public function get location() : Number
      {
         return this.var_524;
      }
   }
}
