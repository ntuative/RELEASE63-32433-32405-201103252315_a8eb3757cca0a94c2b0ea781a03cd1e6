package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_983:IAssetLoader;
      
      private var var_1757:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1757 = param1;
         this.var_983 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1757;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_983;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_983 != null)
            {
               if(!this.var_983.disposed)
               {
                  this.var_983.dispose();
                  this.var_983 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
