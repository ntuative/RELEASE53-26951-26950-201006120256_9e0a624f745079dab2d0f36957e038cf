package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1100:int;
      
      private var var_1352:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1100 = param1;
         var_1352 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1100;
      }
      
      public function get itemName() : String
      {
         return var_1352;
      }
   }
}
