package com.sulake.habbo.friendlist.domain
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.friendlist.Util;
   
   public class FriendCategory implements IDisposable
   {
      
      public static const const_390:int = 100;
      
      public static const const_1046:int = 0;
      
      public static const const_372:int = -1;
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _open:Boolean;
      
      private var var_221:Array;
      
      private var var_2448:Boolean;
      
      private var _disposed:Boolean;
      
      private var var_17:IWindowContainer;
      
      private var var_928:int;
      
      public function FriendCategory(param1:int, param2:String)
      {
         this.var_221 = [];
         super();
         this._id = param1;
         this._name = param2;
         this._open = this._id != const_372;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_17 = null;
      }
      
      public function addFriend(param1:Friend) : void
      {
         var _loc4_:* = null;
         if(this.var_221.indexOf(param1) >= 0)
         {
            return;
         }
         var _loc2_:String = param1.name.toLowerCase();
         var _loc3_:int = 0;
         while(_loc3_ < this.var_221.length)
         {
            _loc4_ = this.var_221[_loc3_];
            if(_loc2_ < _loc4_.name.toLowerCase())
            {
               this.var_221.splice(_loc3_,0,param1);
               return;
            }
            _loc3_++;
         }
         this.var_221.push(param1);
      }
      
      public function getSelectedFriends(param1:Array) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_221)
         {
            if(_loc2_.selected)
            {
               param1.push(_loc2_);
            }
         }
      }
      
      public function getFriend(param1:int) : Friend
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_221)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getFriendCount(param1:Boolean, param2:Boolean = false) : int
      {
         var _loc4_:* = null;
         var _loc3_:int = 0;
         for each(_loc4_ in this.var_221)
         {
            if((!param1 || _loc4_.online) && (!param2 || _loc4_.followingAllowed))
            {
               _loc3_ += 1;
            }
         }
         return _loc3_;
      }
      
      public function removeFriend(param1:int) : Friend
      {
         var _loc2_:Friend = this.getFriend(param1);
         if(_loc2_ != null)
         {
            Util.remove(this.var_221,_loc2_);
            return _loc2_;
         }
         return null;
      }
      
      private function checkPageIndex() : void
      {
         if(this.var_928 >= this.getPageCount())
         {
            this.var_928 = Math.max(0,this.getPageCount() - 1);
         }
      }
      
      public function getPageCount() : int
      {
         return Math.ceil(this.var_221.length / const_390);
      }
      
      public function getStartFriendIndex() : int
      {
         this.checkPageIndex();
         return this.var_928 * const_390;
      }
      
      public function getEndFriendIndex() : int
      {
         this.checkPageIndex();
         return Math.min((this.var_928 + 1) * const_390,this.var_221.length);
      }
      
      public function setOpen(param1:Boolean) : void
      {
         var _loc2_:* = null;
         this._open = param1;
         if(!param1)
         {
            for each(_loc2_ in this.var_221)
            {
               _loc2_.selected = false;
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get received() : Boolean
      {
         return this.var_2448;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get friends() : Array
      {
         return this.var_221;
      }
      
      public function get view() : IWindowContainer
      {
         return this.var_17;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function get pageIndex() : int
      {
         return this.var_928;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set view(param1:IWindowContainer) : void
      {
         this.var_17 = param1;
      }
      
      public function set received(param1:Boolean) : void
      {
         this.var_2448 = param1;
      }
      
      public function set pageIndex(param1:int) : void
      {
         this.var_928 = param1;
      }
   }
}
