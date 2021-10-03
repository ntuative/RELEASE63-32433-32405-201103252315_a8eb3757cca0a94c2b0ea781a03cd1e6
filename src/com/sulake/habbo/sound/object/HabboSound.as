package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1186:Sound = null;
      
      private var var_276:SoundChannel = null;
      
      private var var_550:Number;
      
      private var _complete:Boolean;
      
      public function HabboSound(param1:Sound)
      {
         super();
         this.var_1186 = param1;
         this.var_1186.addEventListener(Event.COMPLETE,this.onComplete);
         this.var_550 = 1;
         this._complete = false;
      }
      
      public function play(param1:Number = 0.0) : Boolean
      {
         this._complete = false;
         this.var_276 = this.var_1186.play(0);
         this.volume = this.var_550;
         return true;
      }
      
      public function stop() : Boolean
      {
         this.var_276.stop();
         return true;
      }
      
      public function get volume() : Number
      {
         return this.var_550;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_550 = param1;
         if(this.var_276 != null)
         {
            this.var_276.soundTransform = new SoundTransform(this.var_550);
         }
      }
      
      public function get position() : Number
      {
         return this.var_276.position;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get length() : Number
      {
         return this.var_1186.length;
      }
      
      public function get ready() : Boolean
      {
         return !this.var_1186.isBuffering;
      }
      
      public function get finished() : Boolean
      {
         return !this._complete;
      }
      
      private function onComplete(param1:Event) : void
      {
         this._complete = true;
      }
   }
}
