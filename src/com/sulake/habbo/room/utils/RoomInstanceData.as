package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_783:TileHeightMap = null;
      
      private var var_1183:LegacyWallGeometry = null;
      
      private var var_1182:RoomCamera = null;
      
      private var var_785:SelectedRoomObjectData = null;
      
      private var var_784:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_522:Map;
      
      private var var_523:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_522 = new Map();
         this.var_523 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1183 = new LegacyWallGeometry();
         this.var_1182 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_783;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_783 != null)
         {
            this.var_783.dispose();
         }
         this.var_783 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1183;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1182;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_785;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_785 != null)
         {
            this.var_785.dispose();
         }
         this.var_785 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_784;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_784 != null)
         {
            this.var_784.dispose();
         }
         this.var_784 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_783 != null)
         {
            this.var_783.dispose();
            this.var_783 = null;
         }
         if(this.var_1183 != null)
         {
            this.var_1183.dispose();
            this.var_1183 = null;
         }
         if(this.var_1182 != null)
         {
            this.var_1182.dispose();
            this.var_1182 = null;
         }
         if(this.var_785 != null)
         {
            this.var_785.dispose();
            this.var_785 = null;
         }
         if(this.var_784 != null)
         {
            this.var_784.dispose();
            this.var_784 = null;
         }
         if(this.var_522 != null)
         {
            this.var_522.dispose();
            this.var_522 = null;
         }
         if(this.var_523 != null)
         {
            this.var_523.dispose();
            this.var_523 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_522.remove(param1.id);
            this.var_522.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_522.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_522.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_522.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_523.remove(param1.id);
            this.var_523.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_523.length > 0)
         {
            return this.getWallItemDataWithId(this.var_523.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_523.remove(param1);
      }
   }
}
