package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_115:int = 0;
      
      public static const const_120:int = 1;
      
      public static const const_112:int = 2;
      
      public static const const_705:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1441:int = 0;
      
      private var var_1911:String = "";
      
      private var var_198:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_198 = param2;
         var_1441 = param3;
         var_1911 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1911;
      }
      
      public function get chatType() : int
      {
         return var_1441;
      }
      
      public function get text() : String
      {
         return var_198;
      }
   }
}
