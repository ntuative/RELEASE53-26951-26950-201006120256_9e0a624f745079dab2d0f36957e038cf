package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_113:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_2017:int;
      
      private var var_415:int;
      
      private var var_714:RoomData;
      
      private var var_1842:int;
      
      private var _ownerName:String;
      
      private var var_2229:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_415 = param1.readInteger();
         var_2017 = param1.readInteger();
         var_2229 = param1.readBoolean();
         var_1842 = param1.readInteger();
         _ownerName = param1.readString();
         var_113 = new RoomData(param1);
         var_714 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_2017;
      }
      
      public function get event() : RoomData
      {
         return var_714;
      }
      
      public function get room() : RoomData
      {
         return var_113;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_113 != null)
         {
            var_113.dispose();
            var_113 = null;
         }
         if(var_714 != null)
         {
            var_714.dispose();
            var_714 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_415;
      }
      
      public function get ownerId() : int
      {
         return var_1842;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2229;
      }
   }
}
