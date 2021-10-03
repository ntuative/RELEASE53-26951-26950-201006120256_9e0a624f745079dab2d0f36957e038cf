package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_705:IAssetLoader;
      
      private var var_1420:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1420 = param1;
         var_705 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_705;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_705 != null)
            {
               if(true)
               {
                  var_705.dispose();
                  var_705 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1420;
      }
   }
}
