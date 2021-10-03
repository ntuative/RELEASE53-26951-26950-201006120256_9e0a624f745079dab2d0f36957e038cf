package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_711:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1157:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_711);
         var_1157 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1157;
      }
   }
}
