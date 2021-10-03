package com.sulake.habbo.help
{
   public class WelcomeScreenHilite
   {
       
      
      private var var_2734:String;
      
      private var var_2733:String;
      
      private var var_2732:String;
      
      public function WelcomeScreenHilite(param1:String, param2:String, param3:String)
      {
         super();
         this.var_2734 = param1;
         this.var_2733 = param2;
         this.var_2732 = param3;
      }
      
      public function get targetIconId() : String
      {
         return this.var_2734;
      }
      
      public function get titleLocalizationKey() : String
      {
         return this.var_2733;
      }
      
      public function get descriptionLocalizationKey() : String
      {
         return this.var_2732;
      }
   }
}
