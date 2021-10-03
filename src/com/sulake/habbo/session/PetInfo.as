package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1843:int;
      
      private var var_1335:int;
      
      private var var_2197:int;
      
      private var var_2195:int;
      
      private var var_2202:int;
      
      private var _energy:int;
      
      private var var_2199:int;
      
      private var _nutrition:int;
      
      private var var_2200:int;
      
      private var var_2196:int;
      
      private var _ownerName:String;
      
      private var var_2670:int;
      
      private var var_501:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1843;
      }
      
      public function get level() : int
      {
         return this.var_1335;
      }
      
      public function get levelMax() : int
      {
         return this.var_2197;
      }
      
      public function get experience() : int
      {
         return this.var_2195;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2202;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2199;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2200;
      }
      
      public function get ownerId() : int
      {
         return this.var_2196;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2670;
      }
      
      public function get age() : int
      {
         return this.var_501;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1843 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1335 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2197 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2195 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2202 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2199 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2200 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2196 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2670 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_501 = param1;
      }
   }
}
