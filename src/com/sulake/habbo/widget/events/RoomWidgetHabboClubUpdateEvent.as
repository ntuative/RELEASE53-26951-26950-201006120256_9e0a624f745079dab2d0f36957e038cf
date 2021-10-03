package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_237:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1978:Boolean = false;
      
      private var var_1981:int = 0;
      
      private var var_1979:int = 0;
      
      private var var_1960:int;
      
      private var var_1980:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_237,param6,param7);
         var_1980 = param1;
         var_1979 = param2;
         var_1981 = param3;
         var_1978 = param4;
         var_1960 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_1960;
      }
      
      public function get pastPeriods() : int
      {
         return var_1981;
      }
      
      public function get periodsLeft() : int
      {
         return var_1979;
      }
      
      public function get daysLeft() : int
      {
         return var_1980;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1978;
      }
   }
}
