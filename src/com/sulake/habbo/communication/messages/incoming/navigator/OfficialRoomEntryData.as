package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1418:int = 4;
      
      public static const const_631:int = 3;
      
      public static const const_692:int = 2;
      
      public static const const_951:int = 1;
       
      
      private var var_2181:String;
      
      private var _disposed:Boolean;
      
      private var var_2017:int;
      
      private var var_2183:Boolean;
      
      private var var_919:String;
      
      private var var_941:PublicRoomData;
      
      private var var_2180:int;
      
      private var _index:int;
      
      private var var_2179:String;
      
      private var _type:int;
      
      private var var_1827:String;
      
      private var var_940:GuestRoomData;
      
      private var var_2182:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2181 = param1.readString();
         var_2182 = param1.readString();
         var_2183 = param1.readInteger() == 1;
         var_2179 = param1.readString();
         var_919 = param1.readString();
         var_2180 = param1.readInteger();
         var_2017 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_951)
         {
            var_1827 = param1.readString();
         }
         else if(_type == const_631)
         {
            var_941 = new PublicRoomData(param1);
         }
         else if(_type == const_692)
         {
            var_940 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2180;
      }
      
      public function get popupCaption() : String
      {
         return var_2181;
      }
      
      public function get userCount() : int
      {
         return var_2017;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2183;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_951)
         {
            return 0;
         }
         if(this.type == const_692)
         {
            return this.var_940.maxUserCount;
         }
         if(this.type == const_631)
         {
            return this.var_941.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2182;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_940 != null)
         {
            this.var_940.dispose();
            this.var_940 = null;
         }
         if(this.var_941 != null)
         {
            this.var_941.dispose();
            this.var_941 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_940;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2179;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_941;
      }
      
      public function get picRef() : String
      {
         return var_919;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1827;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
