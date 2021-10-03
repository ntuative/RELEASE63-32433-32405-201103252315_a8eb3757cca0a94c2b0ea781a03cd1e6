package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1888:int = 1;
      
      public static const const_1500:int = 2;
       
      
      private var var_994:String;
      
      private var var_2635:int;
      
      private var var_2627:int;
      
      private var var_2629:int;
      
      private var var_2632:int;
      
      private var var_2630:Boolean;
      
      private var var_2634:Boolean;
      
      private var var_2631:int;
      
      private var var_2625:int;
      
      private var var_2633:Boolean;
      
      private var var_2628:int;
      
      private var var_2626:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_994 = param1.readString();
         this.var_2635 = param1.readInteger();
         this.var_2627 = param1.readInteger();
         this.var_2629 = param1.readInteger();
         this.var_2632 = param1.readInteger();
         this.var_2630 = param1.readBoolean();
         this.var_2634 = param1.readBoolean();
         this.var_2631 = param1.readInteger();
         this.var_2625 = param1.readInteger();
         this.var_2633 = param1.readBoolean();
         this.var_2628 = param1.readInteger();
         this.var_2626 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_994;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2635;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2627;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2629;
      }
      
      public function get responseType() : int
      {
         return this.var_2632;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2630;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2634;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2631;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2625;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2633;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2628;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2626;
      }
   }
}
