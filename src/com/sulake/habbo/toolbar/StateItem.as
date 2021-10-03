package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var _id:String;
      
      private var var_1395:Boolean;
      
      private var var_2529:Boolean;
      
      private var var_199:int = 120;
      
      private var var_1804:String;
      
      private var var_1393:String = "-1";
      
      private var var_1721:String = "-1";
      
      private var var_1805:String = "-1";
      
      private var var_2530:String;
      
      private var var_469:String;
      
      private var _frames:XMLList;
      
      private var var_360:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         this._id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            this.var_1395 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            this.var_2529 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            this.var_199 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            this.var_1804 = param1.@namebase;
         }
         else
         {
            this.var_1804 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            this.var_1393 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            this.var_1721 = param1.@nextState;
         }
         else
         {
            this.var_1721 = this._id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            this.var_1805 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            this.var_2530 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            this.var_469 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            this._frames = _loc3_;
         }
         if(param1.attribute("label").length() > 0)
         {
            this.var_360 = param1.@label;
         }
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get loop() : Boolean
      {
         return this.var_1395;
      }
      
      public function get bounce() : Boolean
      {
         return this.var_2529;
      }
      
      public function get timer() : int
      {
         return this.var_199;
      }
      
      public function get nameBase() : String
      {
         return this.var_1804;
      }
      
      public function get hasStateOver() : Boolean
      {
         return this.var_1393 != "-1";
      }
      
      public function get stateOver() : String
      {
         return this.var_1393;
      }
      
      public function get nextState() : String
      {
         return this.var_1721;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return this.var_1805 != "-1";
      }
      
      public function get defaultState() : String
      {
         return this.var_1805;
      }
      
      public function get tooltip() : String
      {
         return this.var_2530;
      }
      
      public function get frames() : XMLList
      {
         return this._frames;
      }
      
      public function get background() : String
      {
         return this.var_469;
      }
      
      public function get label() : String
      {
         return this.var_360;
      }
   }
}
