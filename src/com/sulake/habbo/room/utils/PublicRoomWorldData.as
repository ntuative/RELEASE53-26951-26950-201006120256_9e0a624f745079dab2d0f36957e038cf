package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1942:Number = 1.0;
      
      private var var_148:Number = 1.0;
      
      private var var_1949:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1949 = param1;
         var_148 = param2;
         var_1942 = param3;
      }
      
      public function get scale() : Number
      {
         return var_148;
      }
      
      public function get heightScale() : Number
      {
         return var_1942;
      }
   }
}
