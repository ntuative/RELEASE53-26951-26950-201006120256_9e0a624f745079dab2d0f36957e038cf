package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2134:String;
      
      private var var_454:String;
      
      private var var_671:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_454 = param1;
         var_671 = param2;
         var_2134 = param3;
      }
      
      public function get race() : String
      {
         return var_2134;
      }
      
      public function get figure() : String
      {
         return var_454;
      }
      
      public function get gender() : String
      {
         return var_671;
      }
   }
}
