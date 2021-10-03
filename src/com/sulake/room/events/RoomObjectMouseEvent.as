package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1528:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1566:String = "ROE_MOUSE_ENTER";
      
      public static const const_384:String = "ROE_MOUSE_MOVE";
      
      public static const const_1644:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_214:String = "ROE_MOUSE_CLICK";
      
      public static const const_481:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1792:Boolean;
      
      private var var_1791:Boolean;
      
      private var var_1789:Boolean;
      
      private var var_1790:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1789 = param4;
         var_1790 = param5;
         var_1792 = param6;
         var_1791 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1791;
      }
      
      public function get altKey() : Boolean
      {
         return var_1789;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1790;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1792;
      }
   }
}
