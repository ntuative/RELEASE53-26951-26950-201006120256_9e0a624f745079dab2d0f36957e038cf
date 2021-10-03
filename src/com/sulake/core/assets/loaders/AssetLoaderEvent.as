package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_970:String = "AssetLoaderEventUnload";
      
      public static const const_48:String = "AssetLoaderEventError";
      
      public static const const_915:String = "AssetLoaderEventOpen";
      
      public static const const_877:String = "AssetLoaderEventProgress";
      
      public static const const_835:String = "AssetLoaderEventStatus";
      
      public static const ASSET_LOADER_EVENT_COMPLETE:String = "AssetLoaderEventComplete";
       
      
      private var var_149:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_149 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_149;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_149);
      }
   }
}
