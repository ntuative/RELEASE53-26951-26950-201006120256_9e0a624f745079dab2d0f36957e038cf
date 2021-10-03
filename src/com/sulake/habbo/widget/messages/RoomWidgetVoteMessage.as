package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_138:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1226:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_138);
         var_1226 = param1;
      }
      
      public function get method_3() : int
      {
         return var_1226;
      }
   }
}
