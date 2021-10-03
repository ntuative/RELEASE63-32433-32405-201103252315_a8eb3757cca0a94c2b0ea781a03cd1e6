package com.sulake.habbo.communication.messages.incoming.inventory.avatareffect
{
   public class AvatarEffect
   {
       
      
      private var _type:int;
      
      private var var_1736:int;
      
      private var var_2673:int;
      
      private var var_2674:int;
      
      public function AvatarEffect()
      {
         super();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get duration() : int
      {
         return this.var_1736;
      }
      
      public function set duration(param1:int) : void
      {
         this.var_1736 = param1;
      }
      
      public function get inactiveEffectsInInventory() : int
      {
         return this.var_2673;
      }
      
      public function set inactiveEffectsInInventory(param1:int) : void
      {
         this.var_2673 = param1;
      }
      
      public function get secondsLeftIfActive() : int
      {
         return this.var_2674;
      }
      
      public function set secondsLeftIfActive(param1:int) : void
      {
         this.var_2674 = param1;
      }
   }
}
