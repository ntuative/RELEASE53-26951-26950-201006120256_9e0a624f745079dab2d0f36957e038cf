package com.sulake.room.messages
{
   import com.sulake.room.utils.IVector3d;
   
   public class RoomObjectUpdateMessage
   {
       
      
      protected var var_74:IVector3d;
      
      protected var var_254:IVector3d;
      
      public function RoomObjectUpdateMessage(param1:IVector3d, param2:IVector3d)
      {
         super();
         var_74 = param1;
         var_254 = param2;
      }
      
      public function get loc() : IVector3d
      {
         return var_74;
      }
      
      public function get dir() : IVector3d
      {
         return var_254;
      }
   }
}
