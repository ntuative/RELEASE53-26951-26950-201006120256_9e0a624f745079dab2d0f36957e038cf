package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_999:String = "RWOCM_CLUB_MAIN";
      
      public static const const_544:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_2226:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_544);
         var_2226 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_2226;
      }
   }
}
