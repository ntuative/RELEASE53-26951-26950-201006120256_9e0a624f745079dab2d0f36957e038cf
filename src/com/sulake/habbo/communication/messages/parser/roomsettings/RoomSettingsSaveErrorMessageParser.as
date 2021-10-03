package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1639:int = 9;
      
      public static const const_1656:int = 4;
      
      public static const const_1700:int = 1;
      
      public static const const_1192:int = 10;
      
      public static const const_1536:int = 2;
      
      public static const const_1278:int = 7;
      
      public static const const_1334:int = 11;
      
      public static const const_1554:int = 3;
      
      public static const const_1377:int = 8;
      
      public static const const_1270:int = 5;
      
      public static const const_1704:int = 6;
      
      public static const const_1308:int = 12;
       
      
      private var var_1859:String;
      
      private var _roomId:int;
      
      private var var_1207:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1859;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1207 = param1.readInteger();
         var_1859 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1207;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
