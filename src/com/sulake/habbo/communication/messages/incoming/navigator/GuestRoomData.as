package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_2017:int;
      
      private var var_2128:String;
      
      private var var_2124:int;
      
      private var var_2123:int;
      
      private var var_714:Boolean;
      
      private var var_2127:Boolean;
      
      private var var_415:int;
      
      private var var_1369:String;
      
      private var var_1955:int;
      
      private var var_1280:int;
      
      private var _ownerName:String;
      
      private var var_775:String;
      
      private var var_2126:int;
      
      private var var_2125:RoomThumbnailData;
      
      private var var_1951:Boolean;
      
      private var var_688:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_688 = new Array();
         super();
         var_415 = param1.readInteger();
         var_714 = param1.readBoolean();
         var_775 = param1.readString();
         _ownerName = param1.readString();
         var_1955 = param1.readInteger();
         var_2017 = param1.readInteger();
         var_2126 = param1.readInteger();
         var_1369 = param1.readString();
         var_2124 = param1.readInteger();
         var_1951 = param1.readBoolean();
         var_2123 = param1.readInteger();
         var_1280 = param1.readInteger();
         var_2128 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_688.push(_loc4_);
            _loc3_++;
         }
         var_2125 = new RoomThumbnailData(param1);
         var_2127 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2126;
      }
      
      public function get roomName() : String
      {
         return var_775;
      }
      
      public function get userCount() : int
      {
         return var_2017;
      }
      
      public function get score() : int
      {
         return var_2123;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2128;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1951;
      }
      
      public function get tags() : Array
      {
         return var_688;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2127;
      }
      
      public function get event() : Boolean
      {
         return var_714;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_688 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1280;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2124;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2125;
      }
      
      public function get doorMode() : int
      {
         return var_1955;
      }
      
      public function get flatId() : int
      {
         return var_415;
      }
      
      public function get description() : String
      {
         return var_1369;
      }
   }
}
