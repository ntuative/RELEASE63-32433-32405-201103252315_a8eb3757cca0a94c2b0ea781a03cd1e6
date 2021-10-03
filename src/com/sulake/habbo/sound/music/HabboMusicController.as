package com.sulake.habbo.sound.music
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.messages.incoming.sound.SongInfoEntry;
   import com.sulake.habbo.communication.messages.incoming.sound.TraxSongInfoMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.sound.UserSongDisksInventoryMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.sound.GetSongInfoMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.sound.GetUserSongDisksMessageComposer;
   import com.sulake.habbo.communication.messages.parser.sound.TraxSongInfoMessageParser;
   import com.sulake.habbo.communication.messages.parser.sound.UserSongDisksInventoryMessageParser;
   import com.sulake.habbo.room.events.RoomObjectSoundMachineStateUpdateEvent;
   import com.sulake.habbo.sound.HabboMusicPrioritiesEnum;
   import com.sulake.habbo.sound.HabboSoundManagerFlash10;
   import com.sulake.habbo.sound.IHabboMusicController;
   import com.sulake.habbo.sound.IHabboSound;
   import com.sulake.habbo.sound.IPlayListController;
   import com.sulake.habbo.sound.ISongInfo;
   import com.sulake.habbo.sound.events.SongDiskInventoryReceivedEvent;
   import com.sulake.habbo.sound.events.SongInfoReceivedEvent;
   import com.sulake.habbo.sound.events.SoundCompleteEvent;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class HabboMusicController implements IHabboMusicController, IDisposable
   {
      
      public static const const_1073:int = -1;
       
      
      private var var_477:HabboSoundManagerFlash10;
      
      private var _connection:IConnection;
      
      private var _events:IEventDispatcher;
      
      private var var_83:IEventDispatcher;
      
      private var var_480:Map;
      
      private var var_301:Array;
      
      private var var_1341:Map;
      
      private var var_409:IPlayListController = null;
      
      private var _disposed:Boolean = false;
      
      private var var_217:Array;
      
      private var var_218:int = 0;
      
      private var var_712:int = -1;
      
      private var var_1088:Timer;
      
      private var var_1836:Map = null;
      
      private var var_2187:int = -1;
      
      private var var_2186:int = -1;
      
      public function HabboMusicController(param1:HabboSoundManagerFlash10, param2:IEventDispatcher, param3:IEventDispatcher, param4:IConnection)
      {
         this.var_480 = new Map();
         this.var_301 = new Array();
         this.var_1341 = new Map();
         this.var_217 = [];
         super();
         this.var_477 = param1;
         this._events = param2;
         this.var_83 = param3;
         this._connection = param4;
         this._connection.addMessageEvent(new TraxSongInfoMessageEvent(this.onSongInfoMessage));
         this._connection.addMessageEvent(new UserSongDisksInventoryMessageEvent(this.onSongDiskInventoryMessage));
         this.var_83.addEventListener(RoomObjectSoundMachineStateUpdateEvent.const_718,this.onJukeboxInit);
         this.var_83.addEventListener(RoomObjectSoundMachineStateUpdateEvent.const_733,this.onJukeboxDispose);
         this.var_83.addEventListener(RoomObjectSoundMachineStateUpdateEvent.const_726,this.onSoundMachineInit);
         this.var_83.addEventListener(RoomObjectSoundMachineStateUpdateEvent.const_826,this.onSoundMachineDispose);
         this.var_1088 = new Timer(1000);
         this.var_1088.start();
         this.var_1088.addEventListener(TimerEvent.TIMER,this.sendNextSongRequestMessage);
         this._events.addEventListener(SoundCompleteEvent.const_312,this.onSongFinishedPlayingEvent);
         var _loc5_:int = 0;
         while(_loc5_ < HabboMusicPrioritiesEnum.PRIORITY_COUNT)
         {
            this.var_217[_loc5_] = null;
            _loc5_++;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get events() : IEventDispatcher
      {
         return this._events;
      }
      
      protected function onSongFinishedPlayingEvent(param1:SoundCompleteEvent) : void
      {
         if(this.getSongIdPlayingAtPriority(this.var_218) == param1.id)
         {
            this.var_217[this.var_218] = null;
            this.playSongWithHighestPriority();
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!this._disposed)
         {
            this.var_477 = null;
            this._connection = null;
            this.var_301 = null;
            if(this.var_409)
            {
               this.var_409.dispose();
               this.var_409 = null;
            }
            if(this.var_480)
            {
               _loc1_ = 0;
               while(_loc1_ < this.var_480.length)
               {
                  _loc2_ = this.var_480.getWithIndex(_loc1_) as SongDataEntry;
                  _loc3_ = _loc2_.soundObject as IHabboSound;
                  if(_loc3_ != null)
                  {
                     _loc3_.stop();
                  }
                  _loc2_.soundObject = null;
                  _loc1_++;
               }
               this.var_480.dispose();
               this.var_480 = null;
            }
            this.var_1088.stop();
            this.var_1088 = null;
            if(this.var_83)
            {
               this.var_83.removeEventListener(RoomObjectSoundMachineStateUpdateEvent.const_718,this.onJukeboxInit);
               this.var_83.removeEventListener(RoomObjectSoundMachineStateUpdateEvent.const_733,this.onJukeboxDispose);
               this.var_83.removeEventListener(RoomObjectSoundMachineStateUpdateEvent.const_726,this.onSoundMachineInit);
               this.var_83.removeEventListener(RoomObjectSoundMachineStateUpdateEvent.const_826,this.onSoundMachineDispose);
            }
            this._disposed = true;
         }
      }
      
      public function getRoomItemPlaylist(param1:int = -1) : IPlayListController
      {
         return this.var_409;
      }
      
      private function addSongStartRequest(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:SongStartRequestData = new SongStartRequestData(param2,param3,param4);
         this.var_1341.remove(param1);
         this.var_1341.add(param1,_loc5_);
      }
      
      private function getSongStartRequest(param1:int) : SongStartRequestData
      {
         return this.var_1341.getValue(param1);
      }
      
      public function playSong(param1:int, param2:int, param3:Number = 0, param4:Number = 0.0) : Boolean
      {
         if(param2 < 0 || param2 >= HabboMusicPrioritiesEnum.PRIORITY_COUNT)
         {
            return false;
         }
         this.var_217[param2] = param1;
         this.addSongStartRequest(param2,param1,param3,param4);
         var _loc5_:SongDataEntry = this.getSongDataEntry(param1);
         if(_loc5_ == null)
         {
            this.addSongInfoRequest(param1);
            return false;
         }
         if(_loc5_.soundObject == null)
         {
            _loc5_.soundObject = this.var_477.loadTraxSong(_loc5_.id,_loc5_.songData);
            if(_loc5_.soundObject == null)
            {
               return false;
            }
         }
         var _loc6_:IHabboSound = _loc5_.soundObject;
         if(!_loc6_.ready)
         {
            return false;
         }
         if(param2 >= this.var_218)
         {
            this.stopSongAtPriority(this.var_712);
            this.playSongObject(param2,param1);
            this.var_218 = param2;
         }
         else
         {
            Logger.log("Higher priority song blocked playing. Stored song " + param1 + " for priority " + param2);
         }
         return true;
      }
      
      private function playSongWithHighestPriority() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         this.var_218 = this.getTopPriority();
         if(this.var_218 >= 0)
         {
            _loc1_ = this.var_218;
            while(_loc1_ >= 0)
            {
               _loc2_ = this.getSongIdPlayingAtPriority(_loc1_);
               if(_loc2_ >= 0 && this.playSongObject(_loc1_,_loc2_))
               {
                  return;
               }
               _loc1_--;
            }
         }
         this.var_712 = -1;
      }
      
      public function stop(param1:int) : void
      {
         var _loc2_:* = param1 == this.var_218;
         this.stopSongAtPriority(param1);
         if(param1 >= 0 && param1 <= this.var_217.length)
         {
            this.var_217[param1] = null;
         }
         if(_loc2_)
         {
            this.playSongWithHighestPriority();
         }
      }
      
      private function stopSongAtPriority(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         if(param1 == this.var_712 && this.var_712 >= 0)
         {
            _loc2_ = this.getSongIdPlayingAtPriority(param1);
            _loc3_ = this.getSongDataEntry(_loc2_);
            this.stopSongDataEntry(_loc3_);
            this.var_712 = -1;
         }
      }
      
      private function stopSongDataEntry(param1:SongDataEntry) : void
      {
         var _loc2_:* = null;
         if(param1 != null)
         {
            _loc2_ = param1.soundObject;
            if(_loc2_ != null)
            {
               _loc2_.stop();
            }
         }
      }
      
      private function getSongDataEntry(param1:int) : SongDataEntry
      {
         return this.var_480.getValue(param1) as SongDataEntry;
      }
      
      public function updateVolume(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_217.length)
         {
            _loc3_ = this.getSongIdPlayingAtPriority(_loc2_);
            _loc4_ = this.getSongDataEntry(_loc3_) as SongDataEntry;
            if(_loc4_ != null)
            {
               _loc4_.soundObject.volume = param1;
            }
            _loc2_++;
         }
      }
      
      public function onSongLoaded(param1:int) : void
      {
         var _loc2_:int = 0;
         this.var_218 = this.getTopPriority();
         if(this.var_218 >= 0)
         {
            _loc2_ = this.getSongIdPlayingAtPriority(this.var_218);
            Logger.log("Song loaded : " + param1);
            if(param1 == _loc2_)
            {
               this.stopSongAtPriority(this.var_712);
               this.playSongObject(this.var_218,param1);
            }
         }
      }
      
      public function addSongInfoRequest(param1:int) : void
      {
         this.var_301.push(param1);
      }
      
      public function requestSongInfoWithoutSamples(param1:int) : void
      {
         if(this.var_301.indexOf(param1) == -1)
         {
            this.var_301.push(param1);
         }
      }
      
      public function getSongInfo(param1:int) : ISongInfo
      {
         var _loc2_:SongDataEntry = this.getSongDataEntry(param1);
         if(_loc2_ == null)
         {
            this.requestSongInfoWithoutSamples(param1);
         }
         return _loc2_;
      }
      
      public function requestUserSongDisks() : void
      {
         if(this._connection == null)
         {
            return;
         }
         this._connection.send(new GetUserSongDisksMessageComposer());
      }
      
      public function getSongDiskInventory() : Map
      {
         return this.var_1836;
      }
      
      public function getSongIdPlayingAtPriority(param1:int) : int
      {
         if(param1 < 0 || param1 >= HabboMusicPrioritiesEnum.PRIORITY_COUNT)
         {
            return -1;
         }
         if(this.var_217[param1] == null)
         {
            return -1;
         }
         return this.var_217[param1];
      }
      
      private function sendNextSongRequestMessage(param1:TimerEvent) : void
      {
         if(this.var_301.length < 1)
         {
            return;
         }
         if(this._connection == null)
         {
            return;
         }
         this._connection.send(new GetSongInfoMessageComposer(this.var_301));
         Logger.log("Requested song info\'s : " + this.var_301);
         this.var_301 = new Array();
      }
      
      private function onSongInfoMessage(param1:IMessageEvent) : void
      {
         var _loc6_:* = null;
         var _loc7_:* = false;
         var _loc8_:Boolean = false;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc2_:TraxSongInfoMessageEvent = param1 as TraxSongInfoMessageEvent;
         var _loc3_:TraxSongInfoMessageParser = _loc2_.getParser() as TraxSongInfoMessageParser;
         var _loc4_:Array = _loc3_.songs;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.length)
         {
            _loc6_ = _loc4_[_loc5_];
            _loc7_ = this.getSongDataEntry(_loc6_.id) == null;
            _loc8_ = this.isSongPlayingOnSomePriority(_loc6_.id);
            if(this.var_301.indexOf(_loc6_.id) != -1)
            {
               this.var_301.splice(this.var_301.indexOf(_loc6_.id),1);
            }
            if(_loc7_)
            {
               if(_loc8_)
               {
                  _loc9_ = this.var_477.loadTraxSong(_loc6_.id,_loc6_.data);
                  if(_loc9_ == null)
                  {
                     return;
                  }
                  _loc10_ = new SongDataEntry(_loc6_.id,_loc6_.length,_loc6_.name,_loc6_.creator,_loc9_);
                  this.var_480.add(_loc6_.id,_loc10_);
                  _loc11_ = this.getSongIdPlayingAtPriority(this.var_218);
                  if(_loc9_.ready && _loc6_.id == _loc11_)
                  {
                     this.playSongObject(this.var_218,_loc11_);
                  }
               }
               else
               {
                  _loc12_ = new SongDataEntry(_loc6_.id,_loc6_.length,_loc6_.name,_loc6_.creator,null);
                  _loc12_.songData = _loc6_.data;
                  this.var_480.add(_loc6_.id,_loc12_);
               }
               this._events.dispatchEvent(new SongInfoReceivedEvent(SongInfoReceivedEvent.TRAX_SONG_INFO_RECEIVED,_loc6_.id));
               Logger.log("Received song info : " + _loc6_.id);
            }
            _loc5_++;
         }
      }
      
      private function playSongObject(param1:int, param2:int) : Boolean
      {
         if(param2 == -1)
         {
            return false;
         }
         var _loc3_:SongDataEntry = this.getSongDataEntry(param2);
         if(_loc3_ == null)
         {
            Logger.log("WARNING: Unable to find song entry id " + param2 + " that was supposed to be loaded.");
            return false;
         }
         var _loc4_:IHabboSound = _loc3_.soundObject;
         if(!_loc4_.ready)
         {
            return false;
         }
         _loc4_.volume = this.var_477.volume;
         var _loc5_:* = Number(const_1073);
         var _loc6_:* = 0;
         var _loc7_:SongStartRequestData = this.getSongStartRequest(param1);
         if(_loc7_ != null)
         {
            _loc5_ = Number(_loc7_.startPos);
            _loc6_ = Number(_loc7_.playLength);
         }
         if(_loc5_ >= _loc3_.length / 1000)
         {
            return false;
         }
         if(_loc5_ == const_1073)
         {
            _loc5_ = 0;
         }
         _loc4_.position = _loc5_;
         _loc4_.play(_loc6_);
         this.notifySongPlaying(_loc3_);
         this.var_712 = param1;
         Logger.log("Started playing song " + param2 + " at position " + _loc5_ + " (length " + _loc3_.length / 1000 + ") with priority " + param1);
         return true;
      }
      
      private function notifySongPlaying(param1:SongDataEntry) : void
      {
         var _loc3_:int = getTimer();
         if(param1.length >= 8000 && (this.var_2187 != param1.id || _loc3_ > this.var_2186 + 8000))
         {
            this.var_477.notifyPlayedSong(param1.name,param1.creator);
            this.var_2187 = param1.id;
            this.var_2186 = _loc3_;
         }
      }
      
      private function getTopPriority() : int
      {
         var _loc1_:int = this.var_217.length - 1;
         while(_loc1_ >= 0)
         {
            if(this.var_217[_loc1_] != null)
            {
               return _loc1_;
            }
            _loc1_--;
         }
         return -1;
      }
      
      private function isSongPlayingOnSomePriority(param1:int) : Boolean
      {
         var _loc2_:int = this.var_217.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.var_217[_loc2_] != null)
            {
               if(this.var_217[_loc2_] == param1)
               {
                  return true;
               }
            }
            _loc2_--;
         }
         return false;
      }
      
      private function onSongDiskInventoryMessage(param1:IMessageEvent) : void
      {
         var _loc2_:UserSongDisksInventoryMessageEvent = param1 as UserSongDisksInventoryMessageEvent;
         var _loc3_:UserSongDisksInventoryMessageParser = _loc2_.getParser() as UserSongDisksInventoryMessageParser;
         this.var_1836 = _loc3_.songDiskInventory;
         this._events.dispatchEvent(new SongDiskInventoryReceivedEvent(SongDiskInventoryReceivedEvent.const_1724));
      }
      
      private function onSoundMachineInit(param1:Event) : void
      {
         this.var_409 = new SoundMachinePlayListController(this.var_477,this,this._events,this.var_83,this._connection) as IPlayListController;
      }
      
      private function onSoundMachineDispose(param1:Event) : void
      {
         this.var_409.dispose();
         this.var_409 = null;
      }
      
      private function onJukeboxInit(param1:Event) : void
      {
         this.var_409 = new JukeboxPlayListController(this.var_477,this,this._events,this.var_83,this._connection) as IPlayListController;
      }
      
      private function onJukeboxDispose(param1:Event) : void
      {
         this.var_409.dispose();
         this.var_409 = null;
      }
   }
}
