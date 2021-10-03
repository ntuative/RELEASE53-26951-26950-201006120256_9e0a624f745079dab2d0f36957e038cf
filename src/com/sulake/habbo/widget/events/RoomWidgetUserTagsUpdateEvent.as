package com.sulake.habbo.widget.events
{
   public class RoomWidgetUserTagsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_143:String = "RWUTUE_USER_TAGS";
       
      
      private var _userId:int;
      
      private var var_688:Array;
      
      private var var_1996:Boolean;
      
      public function RoomWidgetUserTagsUpdateEvent(param1:int, param2:Array, param3:Boolean, param4:Boolean = false, param5:Boolean = false)
      {
         super(const_143,param4,param5);
         _userId = param1;
         var_688 = param2;
         var_1996 = param3;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get tags() : Array
      {
         return var_688;
      }
      
      public function get isOwnUser() : Boolean
      {
         return var_1996;
      }
   }
}
