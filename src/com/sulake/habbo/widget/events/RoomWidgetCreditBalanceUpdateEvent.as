package com.sulake.habbo.widget.events
{
   public class RoomWidgetCreditBalanceUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_191:String = "RWCBUE_CREDIT_BALANCE";
       
      
      private var var_1717:int;
      
      public function RoomWidgetCreditBalanceUpdateEvent(param1:int, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_191,param2,param3);
         var_1717 = param1;
      }
      
      public function get balance() : int
      {
         return var_1717;
      }
   }
}
