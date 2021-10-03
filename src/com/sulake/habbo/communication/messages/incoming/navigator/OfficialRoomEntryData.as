package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1194:int = 1;
      
      public static const const_816:int = 2;
      
      public static const const_648:int = 3;
      
      public static const const_1499:int = 4;
       
      
      private var _index:int;
      
      private var var_2372:String;
      
      private var var_2374:String;
      
      private var var_2371:Boolean;
      
      private var var_2370:String;
      
      private var var_937:String;
      
      private var var_2373:int;
      
      private var var_2211:int;
      
      private var _type:int;
      
      private var var_2331:String;
      
      private var var_902:GuestRoomData;
      
      private var var_903:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2372 = param1.readString();
         this.var_2374 = param1.readString();
         this.var_2371 = param1.readInteger() == 1;
         this.var_2370 = param1.readString();
         this.var_937 = param1.readString();
         this.var_2373 = param1.readInteger();
         this.var_2211 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1194)
         {
            this.var_2331 = param1.readString();
         }
         else if(this._type == const_648)
         {
            this.var_903 = new PublicRoomData(param1);
         }
         else if(this._type == const_816)
         {
            this.var_902 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_902 != null)
         {
            this.var_902.dispose();
            this.var_902 = null;
         }
         if(this.var_903 != null)
         {
            this.var_903.dispose();
            this.var_903 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2372;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2374;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2371;
      }
      
      public function get picText() : String
      {
         return this.var_2370;
      }
      
      public function get picRef() : String
      {
         return this.var_937;
      }
      
      public function get folderId() : int
      {
         return this.var_2373;
      }
      
      public function get tag() : String
      {
         return this.var_2331;
      }
      
      public function get userCount() : int
      {
         return this.var_2211;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_902;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_903;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1194)
         {
            return 0;
         }
         if(this.type == const_816)
         {
            return this.var_902.maxUserCount;
         }
         if(this.type == const_648)
         {
            return this.var_903.maxUsers;
         }
         return 0;
      }
   }
}
