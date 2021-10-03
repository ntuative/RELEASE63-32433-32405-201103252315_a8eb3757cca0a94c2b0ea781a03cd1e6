package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var _id:int;
      
      private var var_2221:String = "";
      
      private var var_1021:String;
      
      private var var_1312:Boolean;
      
      private var var_2205:Boolean = true;
      
      private var var_2220:int;
      
      private var var_2219:String;
      
      public function Breed(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         this.var_2220 = parseInt(param1.@pattern);
         this.var_1021 = String(param1.@gender);
         this.var_1312 = Boolean(parseInt(param1.@colorable));
         this.var_2221 = String(param1.@localizationKey);
         if(param1.@sellable && param1.@sellable == "0")
         {
            this.var_2205 = false;
         }
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get gender() : String
      {
         return this.var_1021;
      }
      
      public function get isColorable() : Boolean
      {
         return this.var_1312;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2205;
      }
      
      public function get patternId() : int
      {
         return this.var_2220;
      }
      
      public function get avatarFigureString() : String
      {
         return this.var_2219;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         this.var_2219 = param1;
      }
      
      public function get localizationKey() : String
      {
         return this.var_2221;
      }
   }
}
