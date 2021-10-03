package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1309:Array;
      
      private var var_1868:String;
      
      private var var_1867:String;
      
      private var var_1866:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         var_1309 = param1;
         var_1868 = param2;
         var_1867 = param3;
         var_1866 = param4;
      }
      
      public function get colours() : Array
      {
         return var_1309;
      }
      
      public function get backgroundAssetName() : String
      {
         return var_1868;
      }
      
      public function get colourAssetName() : String
      {
         return var_1867;
      }
      
      public function get chosenColourAssetName() : String
      {
         return var_1866;
      }
   }
}
