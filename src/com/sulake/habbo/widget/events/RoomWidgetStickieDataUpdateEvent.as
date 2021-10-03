package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_637:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_198:String;
      
      private var var_761:String;
      
      private var var_1606:String;
      
      private var var_157:int = -1;
      
      private var _controller:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_157 = param2;
         var_1606 = param3;
         var_198 = param4;
         var_761 = param5;
         _controller = param6;
      }
      
      public function get objectType() : String
      {
         return var_1606;
      }
      
      public function get colorHex() : String
      {
         return var_761;
      }
      
      public function get text() : String
      {
         return var_198;
      }
      
      public function get objectId() : int
      {
         return var_157;
      }
      
      public function get controller() : Boolean
      {
         return _controller;
      }
   }
}
