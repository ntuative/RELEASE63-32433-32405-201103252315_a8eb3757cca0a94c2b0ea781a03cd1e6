package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1383:IID;
      
      private var var_1700:String;
      
      private var var_110:IUnknown;
      
      private var var_727:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1383 = param1;
         this.var_1700 = getQualifiedClassName(this.var_1383);
         this.var_110 = param2;
         this.var_727 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1383;
      }
      
      public function get iis() : String
      {
         return this.var_1700;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_110;
      }
      
      public function get references() : uint
      {
         return this.var_727;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_110 == null;
      }
      
      public function dispose() : void
      {
         this.var_1383 = null;
         this.var_1700 = null;
         this.var_110 = null;
         this.var_727 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_727;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_727) : uint(0);
      }
   }
}
