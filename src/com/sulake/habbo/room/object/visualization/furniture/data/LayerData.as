package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_498:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_456:int = 0;
      
      public static const const_928:int = 2;
      
      public static const const_919:int = 1;
      
      public static const const_728:Boolean = false;
      
      public static const const_622:String = "";
      
      public static const const_491:int = 0;
      
      public static const const_404:int = 0;
      
      public static const const_377:int = 0;
       
      
      private var var_2306:int = 0;
      
      private var var_1827:String = "";
      
      private var var_1616:int = 0;
      
      private var var_2304:int = 0;
      
      private var var_2307:Number = 0;
      
      private var var_2055:int = 255;
      
      private var var_2305:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_2306;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1616 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2307;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2304 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_2306 = param1;
      }
      
      public function get tag() : String
      {
         return var_1827;
      }
      
      public function get alpha() : int
      {
         return var_2055;
      }
      
      public function get ink() : int
      {
         return var_1616;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2307 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2304;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2305 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2305;
      }
      
      public function set tag(param1:String) : void
      {
         var_1827 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_2055 = param1;
      }
   }
}
