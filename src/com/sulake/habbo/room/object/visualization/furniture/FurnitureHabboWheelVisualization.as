package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_937:int = 10;
      
      private static const const_629:int = 20;
      
      private static const const_1272:int = 31;
      
      private static const const_1271:int = 32;
       
      
      private var var_332:Array;
      
      private var var_759:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_332 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_759)
            {
               this.var_759 = true;
               this.var_332 = new Array();
               this.var_332.push(const_1272);
               this.var_332.push(const_1271);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_937)
         {
            if(this.var_759)
            {
               this.var_759 = false;
               this.var_332 = new Array();
               this.var_332.push(const_937 + param1);
               this.var_332.push(const_629 + param1);
               this.var_332.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_332.length > 0)
            {
               super.setAnimation(this.var_332.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
