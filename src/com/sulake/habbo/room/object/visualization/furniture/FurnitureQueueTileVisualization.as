package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1271:int = 3;
      
      private static const const_1429:int = 2;
      
      private static const const_1431:int = 1;
      
      private static const const_1430:int = 15;
       
      
      private var var_332:Array;
      
      private var var_1273:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_332 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1429)
         {
            this.var_332 = new Array();
            this.var_332.push(const_1431);
            this.var_1273 = const_1430;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1273 > 0)
         {
            --this.var_1273;
         }
         if(this.var_1273 == 0)
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
