package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1687:int;
      
      private var _currentPosition:int;
      
      private var var_1690:int;
      
      private var var_1689:int;
      
      private var var_1688:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1687;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1690;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1689;
      }
      
      public function get syncCount() : int
      {
         return this.var_1688;
      }
      
      public function flush() : Boolean
      {
         this.var_1687 = -1;
         this._currentPosition = -1;
         this.var_1690 = -1;
         this.var_1689 = -1;
         this.var_1688 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1687 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1690 = param1.readInteger();
         this.var_1689 = param1.readInteger();
         this.var_1688 = param1.readInteger();
         return true;
      }
   }
}
