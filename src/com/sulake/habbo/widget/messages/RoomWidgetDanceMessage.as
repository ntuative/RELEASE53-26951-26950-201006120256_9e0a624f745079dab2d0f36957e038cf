package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDanceMessage extends RoomWidgetMessage
   {
      
      public static const const_546:String = "RWCM_MESSAGE_DANCE";
      
      public static const const_1018:int = 0;
      
      public static const const_1275:Array = [2,3,4];
       
      
      private var var_80:int = 0;
      
      public function RoomWidgetDanceMessage(param1:int)
      {
         super(const_546);
         var_80 = param1;
      }
      
      public function get style() : int
      {
         return var_80;
      }
   }
}
