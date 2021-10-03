package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_947:int = 3;
       
      
      private var var_2276:int = -1;
      
      private var var_2274:int = -2;
      
      private var var_350:Vector3d = null;
      
      private var var_414:Vector3d = null;
      
      private var var_1641:Vector3d;
      
      private var var_2279:Boolean = false;
      
      private var _limitedLocY:Boolean = false;
      
      private var var_2275:Boolean = false;
      
      private var var_2277:Boolean = false;
      
      private var var_2273:int = 0;
      
      private var var_2281:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2278:int = 0;
      
      private var var_2280:int = 0;
      
      private var var_1586:int = -1;
      
      private var var_1353:int = 0;
      
      public function RoomCamera()
      {
         this.var_1641 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_414;
      }
      
      public function get targetId() : int
      {
         return this.var_2276;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2274;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1641;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2279;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this._limitedLocY;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2275;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2277;
      }
      
      public function get screenWd() : int
      {
         return this.var_2273;
      }
      
      public function get screenHt() : int
      {
         return this.var_2281;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2278;
      }
      
      public function get roomHt() : int
      {
         return this.var_2280;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1586;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2276 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1641.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2274 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2279 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this._limitedLocY = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2275 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2277 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2273 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2281 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         this._scale = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2278 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2280 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1586 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_350 == null)
         {
            this.var_350 = new Vector3d();
         }
         if(this.var_350.x != param1.x || this.var_350.y != param1.y || this.var_350.z != param1.z)
         {
            this.var_350.assign(param1);
            this.var_1353 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_350 = null;
         this.var_414 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_414 != null)
         {
            return;
         }
         this.var_414 = new Vector3d();
         this.var_414.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_350 != null && this.var_414 != null)
         {
            ++this.var_1353;
            _loc4_ = Vector3d.dif(this.var_350,this.var_414);
            if(_loc4_.length <= param2)
            {
               this.var_414 = this.var_350;
               this.var_350 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_947 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1353 <= const_947)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_414 = Vector3d.sum(this.var_414,_loc4_);
            }
         }
      }
   }
}
