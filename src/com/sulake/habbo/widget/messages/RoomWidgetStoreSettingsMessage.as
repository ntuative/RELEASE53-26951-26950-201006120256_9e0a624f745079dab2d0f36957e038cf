package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStoreSettingsMessage extends RoomWidgetMessage
   {
      
      public static const const_676:String = "RWSSM_STORE_SOUND";
      
      public static const const_582:String = "RWSSM_PREVIEW_SOUND";
      
      public static const const_1282:String = "RWSSM_STORE_SETTINGS";
       
      
      private var var_694:Number;
      
      public function RoomWidgetStoreSettingsMessage(param1:String)
      {
         super(param1);
      }
      
      public function set volume(param1:Number) : void
      {
         var_694 = param1;
      }
      
      public function get volume() : Number
      {
         return var_694;
      }
   }
}
