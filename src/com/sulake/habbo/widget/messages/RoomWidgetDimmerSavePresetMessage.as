package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_682:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_2088:int;
      
      private var var_2089:int;
      
      private var var_2327:Boolean;
      
      private var var_1139:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_682);
         var_2089 = param1;
         var_2088 = param2;
         _color = param3;
         var_1139 = param4;
         var_2327 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_2088;
      }
      
      public function get presetNumber() : int
      {
         return var_2089;
      }
      
      public function get brightness() : int
      {
         return var_1139;
      }
      
      public function get apply() : Boolean
      {
         return var_2327;
      }
   }
}
