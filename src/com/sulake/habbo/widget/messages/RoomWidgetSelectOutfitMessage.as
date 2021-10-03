package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_898:String = "select_outfit";
       
      
      private var var_2101:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_898);
         var_2101 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2101;
      }
   }
}
