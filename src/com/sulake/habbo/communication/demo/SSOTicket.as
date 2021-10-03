package com.sulake.habbo.communication.demo
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.habbo.communication.IHabboWebLogin;
   import com.sulake.habbo.communication.enum.HabboWeb;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class SSOTicket extends EventDispatcher
   {
      
      public static const const_272:String = "failure";
      
      public static const const_347:String = "success";
       
      
      private var _assets:IAssetLibrary;
      
      private var var_1329:String;
      
      private var var_2015:String;
      
      private var var_1582:String;
      
      private var var_1328:IHabboWebLogin;
      
      private var var_14:URLLoader;
      
      private var var_2510:String;
      
      public function SSOTicket(param1:IAssetLibrary, param2:IHabboWebLogin, param3:String)
      {
         super();
         _assets = param1;
         var_1328 = param2;
         var_1329 = "http://" + param3 + "/client";
         var_1328.init();
         var_1328.addEventListener(HabboWeb.const_241,requestClientURL);
      }
      
      public function get shockwaveClientUrl() : String
      {
         return var_2015;
      }
      
      private function requestClientURL(param1:Event = null) : void
      {
         var _loc2_:String = var_1329;
         if(_assets.hasAsset(_loc2_))
         {
            Logger.log("[CoreLocalizationManager] reload localization for url: " + var_1329);
         }
         var _loc3_:URLRequest = new URLRequest(var_1329);
         if(_assets.hasAsset(_loc2_))
         {
            _assets.removeAsset(_assets.getAssetByName(_loc2_));
         }
         var _loc4_:AssetLoaderStruct = _assets.loadAssetFromFile(_loc2_,_loc3_,"text/plain");
         _loc4_.addEventListener(AssetLoaderEvent.ASSET_LOADER_EVENT_COMPLETE,clientURLComplete);
      }
      
      public function get ticket() : String
      {
         return var_1582;
      }
      
      private function clientURLComplete(param1:Event = null) : void
      {
         var event:Event = param1;
         var loaderStruct:AssetLoaderStruct = event.target as AssetLoaderStruct;
         if(loaderStruct == null)
         {
            return;
         }
         var data:String = loaderStruct.assetLoader.content as String;
         if(data.indexOf("account/reauthenticate\"") > -1)
         {
            var_1328.requestReAuthenticate();
         }
         else
         {
            try
            {
               var_1582 = /\"sso.ticket\" : \"(.*?)\"/.exec(data)[1];
               var_2015 = /\"flash.client.url\" : \"(.*?)\"/.exec(data)[1];
               if(false)
               {
                  dispatchEvent(new Event(const_347));
               }
               else
               {
                  dispatchEvent(new Event(const_272));
               }
            }
            catch(e:Error)
            {
               trace(e);
               dispatchEvent(new Event(const_272));
            }
         }
      }
   }
}
