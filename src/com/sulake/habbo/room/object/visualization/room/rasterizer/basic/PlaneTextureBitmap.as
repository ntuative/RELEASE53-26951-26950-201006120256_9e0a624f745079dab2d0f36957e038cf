package com.sulake.habbo.room.object.visualization.room.rasterizer.basic
{
   import flash.display.BitmapData;
   
   public class PlaneTextureBitmap
   {
      
      public static const const_53:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var _normalMaxX:Number = 1.0;
      
      private var var_1721:Number = -1.0;
      
      private var var_1720:Number = -1.0;
      
      private var _bitmap:BitmapData = null;
      
      private var var_1722:Number = 1.0;
      
      public function PlaneTextureBitmap(param1:BitmapData, param2:Number = -1.0, param3:Number = 1.0, param4:Number = -1.0, param5:Number = 1.0)
      {
         super();
         var_1720 = param2;
         _normalMaxX = param3;
         var_1721 = param4;
         var_1722 = param5;
         _bitmap = param1;
      }
      
      public function get normalMaxX() : Number
      {
         return _normalMaxX;
      }
      
      public function get normalMaxY() : Number
      {
         return var_1722;
      }
      
      public function get normalMinX() : Number
      {
         return var_1720;
      }
      
      public function get bitmap() : BitmapData
      {
         return _bitmap;
      }
      
      public function get normalMinY() : Number
      {
         return var_1721;
      }
      
      public function dispose() : void
      {
         _bitmap = null;
      }
   }
}
