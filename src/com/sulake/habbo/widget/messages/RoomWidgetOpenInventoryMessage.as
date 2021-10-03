package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_986:String = "inventory_badges";
      
      public static const const_1272:String = "inventory_clothes";
      
      public static const const_1333:String = "inventory_furniture";
      
      public static const const_655:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_869:String = "inventory_effects";
       
      
      private var var_2165:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_655);
         var_2165 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2165;
      }
   }
}
