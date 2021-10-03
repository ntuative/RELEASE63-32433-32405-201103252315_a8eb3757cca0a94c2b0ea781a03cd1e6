package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_353:int = 1;
      
      public static const const_235:int = 2;
      
      public static const const_305:int = 3;
      
      public static const const_388:int = 4;
      
      public static const const_265:int = 5;
      
      public static const const_387:int = 1;
      
      public static const const_716:int = 2;
      
      public static const const_777:int = 3;
      
      public static const const_793:int = 4;
      
      public static const const_248:int = 5;
      
      public static const const_869:int = 6;
      
      public static const const_821:int = 7;
      
      public static const const_275:int = 8;
      
      public static const const_391:int = 9;
      
      public static const const_1848:int = 10;
      
      public static const const_929:int = 11;
      
      public static const const_515:int = 12;
       
      
      private var var_407:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_407 = new Array();
         this.var_407.push(new Tab(this._navigator,const_353,const_515,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_534));
         this.var_407.push(new Tab(this._navigator,const_235,const_387,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_534));
         this.var_407.push(new Tab(this._navigator,const_388,const_929,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1060));
         this.var_407.push(new Tab(this._navigator,const_305,const_248,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_534));
         this.var_407.push(new Tab(this._navigator,const_265,const_275,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_713));
         this.setSelectedTab(const_353);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_388;
      }
      
      public function get tabs() : Array
      {
         return this.var_407;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_407)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_407)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_407)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
