package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2322:String;
      
      private var var_898:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2322 = param1;
         var_898 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2322;
      }
      
      public function get parameter() : String
      {
         return var_898;
      }
   }
}
