package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_552:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_501:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_552);
         var_501 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_501;
      }
   }
}
