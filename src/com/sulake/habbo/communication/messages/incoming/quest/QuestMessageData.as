package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var _id:int;
      
      private var var_402:int;
      
      private var _type:String;
      
      private var var_2003:String;
      
      private var var_2001:int;
      
      private var var_2002:String;
      
      private var var_835:String;
      
      private var var_2000:String;
      
      private var var_2514:String;
      
      private var var_2813:uint;
      
      private var var_2785:uint;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this.var_402 = param1.readInteger();
         this._type = param1.readString();
         this.var_2003 = param1.readString();
         this.var_2001 = param1.readInteger();
         this.var_2002 = param1.readString();
         this.var_835 = param1.readString();
         this.var_2514 = param1.readString();
         this.var_2785 = param1.readInteger();
         var _loc2_:String = "";
         var _loc3_:int = this.var_835.length - 1;
         while(_loc3_ > 0 && this.isNumber(this.var_835.charAt(_loc3_)))
         {
            _loc2_ = this.var_835.charAt(_loc3_) + _loc2_;
            _loc3_--;
         }
         if(_loc3_ > 0)
         {
            this.var_2000 = this.var_835.substring(0,_loc3_ + 1);
         }
         else
         {
            this.var_2000 = this.var_835;
         }
         this.var_2813 = uint(_loc2_);
      }
      
      private function getNumber(param1:String) : int
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ - 48;
      }
      
      private function isNumber(param1:String) : Boolean
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ >= 48 && _loc2_ <= 57;
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this.var_402 = 0;
         this._type = "";
         this.var_2003 = "";
         this.var_2001 = 0;
         this.var_2002 = "";
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get status() : int
      {
         return this.var_402;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_2003;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_2001;
      }
      
      public function get endDateTimeStamp() : String
      {
         return this.var_2002;
      }
      
      public function get localizationCode() : String
      {
         return this.var_835;
      }
      
      public function get sortCode() : uint
      {
         return this.var_2813;
      }
      
      public function get sortOrder() : uint
      {
         return this.var_2785;
      }
      
      public function get localizationPrefix() : String
      {
         return this.var_2000;
      }
      
      public function get questBadgeAchievementTypeId() : String
      {
         return this.var_2514;
      }
   }
}
