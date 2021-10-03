package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2198:Number = 0.0;
      
      private var var_2062:Number = 0.0;
      
      private var var_2061:Number = 0.0;
      
      private var var_2199:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_2062 = param1;
         var_2061 = param2;
         var_2198 = param3;
         var_2199 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_2062;
      }
      
      public function get leftSideLength() : Number
      {
         return var_2198;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_2061;
      }
      
      public function get rightSideLength() : Number
      {
         return var_2199;
      }
   }
}
