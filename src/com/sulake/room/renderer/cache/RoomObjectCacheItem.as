package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_524:RoomObjectLocationCacheItem = null;
      
      private var var_202:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_524 = new RoomObjectLocationCacheItem(param1);
         this.var_202 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_524;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_202;
      }
      
      public function dispose() : void
      {
         if(this.var_524 != null)
         {
            this.var_524.dispose();
            this.var_524 = null;
         }
         if(this.var_202 != null)
         {
            this.var_202.dispose();
            this.var_202 = null;
         }
      }
   }
}
