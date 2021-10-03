package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFriendRequestMessage extends RoomWidgetMessage
   {
      
      public static const const_760:String = "RWFRM_ACCEPT";
      
      public static const const_608:String = "RWFRM_DECLINE";
       
      
      private var var_1181:int = 0;
      
      public function RoomWidgetFriendRequestMessage(param1:String, param2:int = 0)
      {
         super(param1);
         var_1181 = param2;
      }
      
      public function get requestId() : int
      {
         return var_1181;
      }
   }
}
