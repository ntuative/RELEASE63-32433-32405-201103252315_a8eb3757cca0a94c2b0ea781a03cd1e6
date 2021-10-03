package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1773:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_203:MsgWithRequestId;
      
      private var var_611:RoomEventData;
      
      private var var_2466:Boolean;
      
      private var var_2457:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2384:int;
      
      private var var_252:GuestRoomData;
      
      private var var_929:PublicRoomShortData;
      
      private var var_2459:int;
      
      private var var_2464:Boolean;
      
      private var var_2467:int;
      
      private var var_2463:Boolean;
      
      private var var_1746:int;
      
      private var var_2460:Boolean;
      
      private var var_1411:Array;
      
      private var var_1413:Array;
      
      private var var_2462:int;
      
      private var var_1412:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1153:Boolean;
      
      private var var_2458:int;
      
      private var var_2465:Boolean;
      
      private var var_2461:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1411 = new Array();
         this.var_1413 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_252 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_252 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_929 = null;
         this.var_252 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_929 = param1.publicSpace;
            this.var_611 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_611 != null)
         {
            this.var_611.dispose();
            this.var_611 = null;
         }
         if(this.var_929 != null)
         {
            this.var_929.dispose();
            this.var_929 = null;
         }
         if(this.var_252 != null)
         {
            this.var_252.dispose();
            this.var_252 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_252 != null)
         {
            this.var_252.dispose();
         }
         this.var_252 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_611 != null)
         {
            this.var_611.dispose();
         }
         this.var_611 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_203 != null && this.var_203 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_203 != null && this.var_203 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_203 != null && this.var_203 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_203 = param1;
         this.var_1153 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_203 = param1;
         this.var_1153 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_203 = param1;
         this.var_1153 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_203 == null)
         {
            return;
         }
         this.var_203.dispose();
         this.var_203 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_203 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_203 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_203 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_611;
      }
      
      public function get avatarId() : int
      {
         return this.var_2384;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2466;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2457;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_252;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_929;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2464;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2467;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1746;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2463;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2458;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2459;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2460;
      }
      
      public function get adIndex() : int
      {
         return this.var_2461;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2465;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2384 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2467 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2464 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2466 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2457 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2463 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1746 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2458 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2459 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2460 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2461 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2465 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1411 = param1;
         this.var_1413 = new Array();
         for each(_loc2_ in this.var_1411)
         {
            if(_loc2_.visible)
            {
               this.var_1413.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1411;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1413;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2462 = param1.limit;
         this.var_1412 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1412 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_252.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_252 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_252.flatId;
         return this.var_1746 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1412 >= this.var_2462;
      }
      
      public function startLoading() : void
      {
         this.var_1153 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1153;
      }
   }
}
