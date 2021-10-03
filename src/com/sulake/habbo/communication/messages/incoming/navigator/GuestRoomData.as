package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_351:int;
      
      private var var_713:Boolean;
      
      private var var_1016:String;
      
      private var _ownerName:String;
      
      private var var_2210:int;
      
      private var var_2211:int;
      
      private var var_2212:int;
      
      private var var_1705:String;
      
      private var var_2214:int;
      
      private var var_2213:Boolean;
      
      private var var_696:int;
      
      private var var_1350:int;
      
      private var var_2215:String;
      
      private var var_855:Array;
      
      private var var_2216:RoomThumbnailData;
      
      private var var_2217:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_855 = new Array();
         super();
         this.var_351 = param1.readInteger();
         this.var_713 = param1.readBoolean();
         this.var_1016 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2210 = param1.readInteger();
         this.var_2211 = param1.readInteger();
         this.var_2212 = param1.readInteger();
         this.var_1705 = param1.readString();
         this.var_2214 = param1.readInteger();
         this.var_2213 = param1.readBoolean();
         this.var_696 = param1.readInteger();
         this.var_1350 = param1.readInteger();
         this.var_2215 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_855.push(_loc4_);
            _loc3_++;
         }
         this.var_2216 = new RoomThumbnailData(param1);
         this.var_2217 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_855 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_351;
      }
      
      public function get event() : Boolean
      {
         return this.var_713;
      }
      
      public function get roomName() : String
      {
         return this.var_1016;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2210;
      }
      
      public function get userCount() : int
      {
         return this.var_2211;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2212;
      }
      
      public function get description() : String
      {
         return this.var_1705;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2214;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2213;
      }
      
      public function get score() : int
      {
         return this.var_696;
      }
      
      public function get categoryId() : int
      {
         return this.var_1350;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2215;
      }
      
      public function get tags() : Array
      {
         return this.var_855;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2216;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2217;
      }
   }
}
