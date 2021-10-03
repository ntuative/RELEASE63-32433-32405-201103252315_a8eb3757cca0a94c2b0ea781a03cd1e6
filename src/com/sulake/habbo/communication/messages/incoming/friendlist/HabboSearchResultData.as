package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2384:int;
      
      private var var_2009:String;
      
      private var var_2623:String;
      
      private var var_2620:Boolean;
      
      private var var_2622:Boolean;
      
      private var var_2624:int;
      
      private var var_2619:String;
      
      private var var_2621:String;
      
      private var var_1649:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2384 = param1.readInteger();
         this.var_2009 = param1.readString();
         this.var_2623 = param1.readString();
         this.var_2620 = param1.readBoolean();
         this.var_2622 = param1.readBoolean();
         param1.readString();
         this.var_2624 = param1.readInteger();
         this.var_2619 = param1.readString();
         this.var_2621 = param1.readString();
         this.var_1649 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2384;
      }
      
      public function get avatarName() : String
      {
         return this.var_2009;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2623;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2620;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2622;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2624;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2619;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2621;
      }
      
      public function get realName() : String
      {
         return this.var_1649;
      }
   }
}
