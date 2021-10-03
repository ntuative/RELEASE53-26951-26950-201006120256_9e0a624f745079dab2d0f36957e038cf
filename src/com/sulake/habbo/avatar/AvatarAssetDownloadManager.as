package com.sulake.habbo.avatar
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.events.EventDispatcher;
   import com.sulake.habbo.avatar.structure.IFigureData;
   import com.sulake.habbo.avatar.structure.figure.FigurePart;
   import com.sulake.habbo.avatar.structure.figure.IFigurePartSet;
   import com.sulake.habbo.avatar.structure.figure.ISetType;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class AvatarAssetDownloadManager extends EventDispatcher
   {
       
      
      private var var_730:Dictionary;
      
      private const const_1719:int = 100;
      
      private var var_729:Dictionary;
      
      private var var_1936:String;
      
      private var var_889:Dictionary;
      
      private var _assets:IAssetLibrary;
      
      private var var_727:Array;
      
      private var var_519:Array;
      
      private var var_1562:Boolean;
      
      private var var_79:AvatarStructure;
      
      private var var_728:Timer;
      
      public function AvatarAssetDownloadManager(param1:IAssetLibrary, param2:String, param3:String, param4:AvatarStructure)
      {
         super();
         var_889 = new Dictionary();
         _assets = param1;
         var_79 = param4;
         var_729 = new Dictionary();
         var_1936 = param3;
         var_730 = new Dictionary();
         var_519 = [];
         var_727 = [];
         var _loc5_:URLRequest = new URLRequest(param2);
         var _loc6_:AssetLoaderStruct = _assets.loadAssetFromFile("figuremap",_loc5_,"text/xml");
         _loc6_.addEventListener(AssetLoaderEvent.ASSET_LOADER_EVENT_COMPLETE,onConfigurationComplete);
         _loc6_.addEventListener(AssetLoaderEvent.const_48,onConfigurationError);
         var_728 = new Timer(const_1719,1);
         var_728.addEventListener(TimerEvent.TIMER_COMPLETE,shiftQueue);
      }
      
      private function libraryComplete(param1:Event) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc2_:* = [];
         for(_loc3_ in var_729)
         {
            _loc4_ = var_729[_loc3_];
            _loc5_ = 0;
            for each(_loc6_ in _loc4_)
            {
               if(_loc6_.isReady)
               {
                  _loc5_++;
               }
            }
            if(_loc5_ == _loc4_.length)
            {
               _loc2_.push(_loc3_);
               _loc7_ = var_730[_loc3_];
               for each(_loc8_ in _loc7_)
               {
                  if(_loc8_ != null && !_loc8_.disposed)
                  {
                     _loc8_.avatarImageReady(_loc3_);
                  }
               }
               delete var_730[_loc3_];
            }
         }
         for each(_loc3_ in _loc2_)
         {
            delete var_729[_loc3_];
         }
         var_728.start();
      }
      
      private function addToInitQueue(param1:AvatarFigureContainer, param2:IAvatarImageListener) : void
      {
         var_727.push([param1,param2]);
      }
      
      private function nextInQueue() : void
      {
         var _loc1_:* = null;
         if(false)
         {
            _loc1_ = var_519[0];
            _loc1_.startDownloading();
         }
      }
      
      private function method_4(param1:AvatarFigureContainer) : Array
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc2_:* = [];
         var _loc3_:IFigureData = var_79.figureData;
         for each(_loc4_ in param1.getPartTypeIds())
         {
            _loc5_ = _loc3_.getSetType(_loc4_);
            _loc6_ = param1.getPartSetId(_loc4_);
            _loc7_ = _loc5_.getPartSet(_loc6_);
            if(_loc7_)
            {
               for each(_loc8_ in _loc7_.parts)
               {
                  _loc9_ = _loc8_.type + ":" + _loc8_.id;
                  _loc10_ = var_889[_loc9_];
                  if(_loc10_ != null)
                  {
                     for each(_loc11_ in _loc10_)
                     {
                        if(_loc11_ != null)
                        {
                           if(!_loc11_.isReady)
                           {
                              if(_loc2_.indexOf(_loc11_) == -1)
                              {
                                 _loc2_.push(_loc11_);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function isReady(param1:AvatarFigureContainer) : Boolean
      {
         if(!var_1562)
         {
            return false;
         }
         var _loc2_:Array = method_4(param1);
         return _loc2_.length == 0;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         var_889 = null;
         _assets = null;
         var_729 = null;
         var_730 = null;
         var_79 = null;
         var_519 = null;
         var_727 = null;
         if(var_728)
         {
            var_728.stop();
            var_728 = null;
         }
      }
      
      private function generateMap(param1:XML) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         for each(_loc2_ in param1.lib)
         {
            _loc3_ = new AvatarAssetDownloadLibrary(_loc2_.@id,_loc2_.@revision,var_1936,_assets);
            _loc3_.addEventListener(Event.COMPLETE,libraryComplete);
            for each(_loc4_ in _loc2_.part)
            {
               _loc5_ = _loc4_.@type + ":" + _loc4_.@id;
               _loc6_ = var_889[_loc5_];
               if(_loc6_ == null)
               {
                  _loc6_ = [];
               }
               _loc6_.push(_loc3_);
               var_889[_loc5_] = _loc6_;
            }
         }
      }
      
      private function shiftQueue(param1:Event = null) : void
      {
         var_519.shift();
         nextInQueue();
      }
      
      private function onConfigurationComplete(param1:Event) : void
      {
         var data:XML = null;
         var event:Event = param1;
         var loaderStruct:AssetLoaderStruct = event.target as AssetLoaderStruct;
         if(loaderStruct == null)
         {
            return;
         }
         try
         {
            data = new XML(loaderStruct.assetLoader.content as String);
         }
         catch(e:Error)
         {
            Logger.log("[AvatarAssetDownloadManager] Error: " + e.message);
            return;
         }
         if(data == null)
         {
            Logger.log("[AvatarAssetDownloadManager] XML error: " + loaderStruct + " not valid XML");
            return;
         }
         if(data.toString() == "")
         {
            Logger.log("[AvatarAssetDownloadManager] XML error: " + loaderStruct + " is EMPTY!");
            return;
         }
         generateMap(data);
         var_1562 = true;
         purgeInitQueue();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function addToQueue(param1:AvatarAssetDownloadLibrary) : void
      {
         if(var_519.indexOf(param1) == -1 && !param1.isReady)
         {
            var_519.push(param1);
            if(false)
            {
               nextInQueue();
            }
         }
      }
      
      private function onConfigurationError(param1:Event) : void
      {
         Logger.log("AVATAR ASSET ERROR: Could not load figuremap.xml");
      }
      
      public function loadFigureSetData(param1:AvatarFigureContainer, param2:IAvatarImageListener) : void
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(!var_1562)
         {
            addToInitQueue(param1,param2);
            return;
         }
         var _loc3_:String = param1.getFigureString();
         var _loc4_:Array = method_4(param1);
         if(_loc4_.length > 0)
         {
            _loc5_ = var_730[_loc3_];
            if(_loc5_ == null)
            {
               _loc5_ = [];
            }
            _loc5_.push(param2);
            var_730[_loc3_] = _loc5_;
            var_729[_loc3_] = _loc4_;
            for each(_loc6_ in _loc4_)
            {
               addToQueue(_loc6_);
            }
         }
         else if(param2 != null && !param2.disposed)
         {
            param2.avatarImageReady(_loc3_);
         }
      }
      
      private function purgeInitQueue() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_727)
         {
            loadFigureSetData(_loc1_[0],_loc1_[1]);
         }
         var_727 = [];
      }
   }
}
