package com.sulake.habbo.sound.trax
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.sound.IHabboSound;
   import com.sulake.habbo.sound.events.SoundCompleteEvent;
   import flash.events.IEventDispatcher;
   import flash.events.SampleDataEvent;
   import flash.events.TimerEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.Timer;
   
   public class TraxSequencer implements IHabboSound
   {
      
      private static const const_110:Number = 44100;
      
      private static const const_345:uint = 8192;
      
      private static const const_1402:uint = 88200;
      
      private static const const_1403:uint = 88200;
      
      private static const const_278:Vector.<Number> = new Vector.<Number>(const_345,true);
       
      
      private var _events:IEventDispatcher;
      
      private var var_550:Number;
      
      private var var_1250:Sound;
      
      private var var_276:SoundChannel;
      
      private var var_1933:TraxData;
      
      private var var_1934:Map;
      
      private var var_1045:Boolean;
      
      private var var_2085:int;
      
      private var var_1507:int = 0;
      
      private var var_234:uint;
      
      private var var_819:Array;
      
      private var var_1932:Boolean;
      
      private var var_821:Boolean = true;
      
      private var var_393:uint;
      
      private var var_1508:uint;
      
      private var var_1251:Boolean;
      
      private var var_1249:Boolean;
      
      private var var_1007:int;
      
      private var var_820:int;
      
      private var var_1008:int;
      
      private var var_1006:int;
      
      public function TraxSequencer(param1:int, param2:TraxData, param3:Map, param4:IEventDispatcher)
      {
         this.var_1508 = uint(30);
         super();
         this._events = param4;
         this.var_2085 = param1;
         this.var_550 = 1;
         this.var_1250 = new Sound();
         this.var_276 = null;
         this.var_1934 = param3;
         this.var_1933 = param2;
         this.var_1934 = param3;
         this.var_1045 = true;
         this.var_234 = 0;
         this.var_819 = [];
         this.var_1932 = false;
         this.var_393 = 0;
         this.var_821 = false;
         this.var_1251 = false;
         this.var_1249 = false;
         this.var_1007 = 0;
         this.var_820 = 0;
         this.var_1008 = 0;
         this.var_1006 = 0;
      }
      
      public function set position(param1:Number) : void
      {
         this.var_234 = uint(param1 * const_110);
      }
      
      public function get volume() : Number
      {
         return this.var_550;
      }
      
      public function get position() : Number
      {
         return this.var_234 / const_110;
      }
      
      public function get ready() : Boolean
      {
         return this.var_1045;
      }
      
      public function set ready(param1:Boolean) : void
      {
         this.var_1045 = param1;
      }
      
      public function get finished() : Boolean
      {
         return this.var_821;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_820 / const_110;
      }
      
      public function set fadeOutSeconds(param1:Number) : void
      {
         this.var_820 = int(param1 * const_110);
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_1007 / const_110;
      }
      
      public function set fadeInSeconds(param1:Number) : void
      {
         this.var_1007 = int(param1 * const_110);
      }
      
      public function play(param1:Number = 0.0) : Boolean
      {
         if(!this.prepare())
         {
            return false;
         }
         if(this.var_276 != null)
         {
            this.stop();
         }
         if(this.var_1007 > 0)
         {
            this.var_1251 = true;
            this.var_1008 = 0;
         }
         this.var_1249 = false;
         this.var_821 = false;
         this.var_1250.addEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         this.var_1507 = param1 * const_110;
         this.var_276 = this.var_1250.play();
         return true;
      }
      
      public function prepare() : Boolean
      {
         if(!this.var_1045)
         {
            Logger.log("Cannot start trax playback until samples ready!");
            return false;
         }
         if(!this.var_1932)
         {
            if(!this.prepareSequence())
            {
               Logger.log("Cannot start playback, prepare sequence failed!");
               return false;
            }
         }
         return true;
      }
      
      public function render(param1:SampleDataEvent) : Boolean
      {
         if(!this.prepare())
         {
            return false;
         }
         while(!this.var_821)
         {
            this.onSampleData(param1);
         }
         return true;
      }
      
      public function stop() : Boolean
      {
         var _loc1_:* = null;
         if(this.var_820 > 0 && !this.var_821)
         {
            this.var_1249 = true;
            this.var_1006 = 0;
            _loc1_ = new Timer(this.var_1508 + this.var_820 / (const_110 / 1000),1);
            _loc1_.start();
            _loc1_.addEventListener(TimerEvent.TIMER_COMPLETE,this.onFadeOutComplete);
         }
         else
         {
            if(this.var_276 != null)
            {
               this.var_276.stop();
            }
            this.var_1250.removeEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
            this.var_276 = null;
         }
         return true;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_550 = param1;
         if(this.var_276 != null)
         {
            this.var_276.soundTransform = new SoundTransform(this.var_550);
         }
      }
      
      public function get length() : Number
      {
         return this.var_393 / const_110;
      }
      
      private function getSampleBars(param1:uint) : int
      {
         return Math.ceil(param1 / const_1402);
      }
      
      private function prepareSequence() : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.var_1933.channels.length)
         {
            _loc2_ = new Map();
            _loc3_ = this.var_1933.channels[_loc1_] as TraxChannel;
            _loc4_ = 0;
            _loc5_ = 0;
            _loc6_ = 0;
            while(_loc6_ < _loc3_.itemCount)
            {
               _loc7_ = _loc3_.getItem(_loc6_).id;
               _loc8_ = this.var_1934.getValue(_loc7_) as TraxSample;
               if(_loc8_ == null)
               {
                  Logger.log("Error in prepareSequence(), sample was null!");
               }
               continue;
               _loc9_ = this.getSampleBars(_loc8_.length);
               _loc10_ = _loc3_.getItem(_loc6_).length / _loc9_;
               _loc11_ = 0;
               while(_loc11_ < _loc10_)
               {
                  if(_loc7_ != 0)
                  {
                     _loc2_.add(_loc4_,_loc8_);
                  }
                  _loc5_ += _loc9_;
                  _loc4_ = uint(_loc5_ * const_1403);
                  _loc11_++;
               }
               if(this.var_393 < _loc4_)
               {
                  this.var_393 = _loc4_;
               }
               _loc6_++;
               return false;
            }
            this.var_819.push(_loc2_);
            _loc1_++;
         }
         this.var_1932 = true;
         return true;
      }
      
      private function onSampleData(param1:SampleDataEvent) : void
      {
         var _loc12_:int = 0;
         var _loc13_:* = null;
         var _loc14_:int = 0;
         var _loc15_:* = null;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:* = null;
         var _loc22_:int = 0;
         var _loc23_:Number = NaN;
         var _loc24_:int = 0;
         var _loc25_:Number = NaN;
         var _loc26_:int = 0;
         var _loc27_:* = null;
         var _loc2_:* = [];
         var _loc3_:* = [];
         var _loc4_:* = [];
         var _loc5_:* = null;
         var _loc6_:int = this.var_819.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc2_.push(this.var_819[_loc7_].getKeys());
            _loc12_ = 0;
            while(_loc12_ < _loc2_[_loc7_].length && _loc2_[_loc7_][_loc12_] < this.var_234)
            {
               _loc12_++;
            }
            if(_loc12_ > 0)
            {
               _loc12_--;
               _loc4_.push(_loc12_);
            }
            else
            {
               _loc4_.push(-1);
            }
            _loc13_ = this.var_819[_loc7_].getWithIndex(_loc12_);
            _loc14_ = this.var_234 - _loc2_[_loc7_][_loc12_];
            if(_loc13_ == null)
            {
               _loc3_.push(null);
            }
            else if(_loc13_.id == 0 || _loc14_ < 0)
            {
               _loc3_.push(null);
            }
            else
            {
               _loc5_ = new TraxChannelSample(_loc13_,_loc14_);
               _loc3_.push(_loc5_);
            }
            _loc7_++;
         }
         _loc7_ = _loc6_ - 1;
         while(_loc7_ >= 0)
         {
            _loc5_ = _loc3_[_loc7_] as TraxChannelSample;
            _loc15_ = _loc2_[_loc7_] as Array;
            _loc16_ = _loc4_[_loc7_];
            _loc17_ = const_345;
            if(this.var_393 - this.var_234 < _loc17_)
            {
               _loc17_ = this.var_393 - this.var_234;
            }
            _loc18_ = 0;
            while(_loc18_ < _loc17_)
            {
               _loc19_ = _loc17_;
               if(_loc16_ < _loc15_.length - 1)
               {
                  if(_loc17_ + this.var_234 >= _loc15_[_loc16_ + 1])
                  {
                     _loc19_ = _loc15_[_loc16_ + 1] - this.var_234;
                  }
               }
               if(_loc17_ - _loc18_ < _loc19_)
               {
                  _loc19_ = _loc17_ - _loc18_;
               }
               _loc20_ = 0;
               if(_loc7_ == _loc6_ - 1)
               {
                  if(_loc5_ != null)
                  {
                     _loc5_.setSample(const_278,_loc18_,_loc19_);
                     _loc18_ += _loc19_;
                  }
                  else
                  {
                     _loc20_ = 0;
                     while(_loc20_ < _loc19_)
                     {
                        var _loc28_:*;
                        const_278[_loc28_ = _loc18_++] = 0;
                        _loc20_++;
                     }
                  }
               }
               else
               {
                  if(_loc5_ != null)
                  {
                     _loc5_.addSample(const_278,_loc18_,_loc19_);
                  }
                  _loc18_ += _loc19_;
               }
               if(_loc18_ < _loc17_)
               {
                  if(_loc16_ < this.var_819[_loc7_].length - 1)
                  {
                     _loc21_ = this.var_819[_loc7_].getWithIndex(++_loc16_);
                     if(_loc21_.id == 0)
                     {
                        _loc5_ = null;
                     }
                     else
                     {
                        _loc5_ = new TraxChannelSample(_loc21_,0);
                     }
                  }
                  else
                  {
                     _loc5_ = null;
                  }
               }
            }
            _loc7_--;
         }
         var _loc8_:* = 0;
         var _loc9_:int = const_345;
         if(this.var_393 - this.var_234 < _loc9_)
         {
            _loc9_ = this.var_393 - this.var_234;
            if(_loc9_ < 0)
            {
               _loc9_ = 0;
            }
         }
         if(!this.var_1251 && !this.var_1249)
         {
            _loc22_ = 0;
            while(_loc22_ < _loc9_)
            {
               _loc8_ = Number(0 * this.volume);
               param1.data.writeFloat(_loc8_);
               param1.data.writeFloat(_loc8_);
               _loc22_++;
            }
         }
         else if(this.var_1251)
         {
            _loc24_ = 0;
            while(_loc24_ < _loc9_)
            {
               _loc23_ = Math.min(this.var_1008 / Number(this.var_1007),1);
               ++this.var_1008;
               _loc8_ = Number(0 * this.volume * _loc23_);
               param1.data.writeFloat(_loc8_);
               param1.data.writeFloat(_loc8_);
               _loc24_++;
            }
            if(this.var_1008 > this.var_1007)
            {
               this.var_1251 = false;
            }
         }
         else
         {
            _loc26_ = 0;
            while(_loc26_ < _loc9_)
            {
               _loc25_ = Math.max(1 - this.var_1006 / Number(this.var_820),0);
               ++this.var_1006;
               _loc8_ = Number(0 * this.volume * _loc25_);
               param1.data.writeFloat(_loc8_);
               param1.data.writeFloat(_loc8_);
               _loc26_++;
            }
            if(this.var_1006 > this.var_820)
            {
               this.var_1249 = false;
            }
         }
         var _loc10_:int = _loc9_;
         while(_loc10_ < const_345)
         {
            _loc8_ = 0;
            param1.data.writeFloat(_loc8_);
            param1.data.writeFloat(_loc8_);
            _loc10_++;
         }
         this.var_234 += const_345;
         if(this.var_276 != null)
         {
            this.var_1508 = param1.position / (const_110 / 1000) - this.var_276.position;
         }
         var _loc11_:int = this.var_393 < this.var_1507 ? int(this.var_393) : (this.var_1507 > 0 ? int(this.var_1507) : int(this.var_393));
         if(this.var_234 > _loc11_ + this.var_1508 * (const_110 / 1000) && !this.var_821)
         {
            this.var_821 = true;
            _loc27_ = new Timer(2,1);
            _loc27_.start();
            _loc27_.addEventListener(TimerEvent.TIMER_COMPLETE,this.onComplete);
         }
      }
      
      private function onComplete(param1:TimerEvent) : void
      {
         this.stop();
         this._events.dispatchEvent(new SoundCompleteEvent(SoundCompleteEvent.const_312,this.var_2085));
      }
      
      private function onFadeOutComplete(param1:TimerEvent) : void
      {
         if(this.var_276 != null)
         {
            this.var_276.stop();
         }
         this.var_1250.removeEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         this.var_276 = null;
      }
   }
}
