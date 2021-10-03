package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1809:int;
      
      private var var_1811:int = 0;
      
      private var var_1808:String;
      
      private var var_1812:int;
      
      private var var_1810:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1809 = param1;
         var_1812 = param2;
         var_1810 = param3;
         var_1808 = param4;
      }
      
      public function get length() : int
      {
         return var_1812;
      }
      
      public function get name() : String
      {
         return var_1810;
      }
      
      public function get creator() : String
      {
         return var_1808;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1811;
      }
      
      public function get id() : int
      {
         return var_1809;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1811 = param1;
      }
   }
}
