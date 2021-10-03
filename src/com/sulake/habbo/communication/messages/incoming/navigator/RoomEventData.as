package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1945:String;
      
      private var var_415:int;
      
      private var var_2060:String;
      
      private var var_2058:String;
      
      private var var_2059:int;
      
      private var var_2056:String;
      
      private var var_2057:int;
      
      private var var_688:Array;
      
      private var var_1145:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_688 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1145 = false;
            return;
         }
         this.var_1145 = true;
         var_2059 = int(_loc2_);
         var_2060 = param1.readString();
         var_415 = int(param1.readString());
         var_2057 = param1.readInteger();
         var_1945 = param1.readString();
         var_2058 = param1.readString();
         var_2056 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_688.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_2057;
      }
      
      public function get eventName() : String
      {
         return var_1945;
      }
      
      public function get eventDescription() : String
      {
         return var_2058;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_2060;
      }
      
      public function get tags() : Array
      {
         return var_688;
      }
      
      public function get creationTime() : String
      {
         return var_2056;
      }
      
      public function get exists() : Boolean
      {
         return var_1145;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_2059;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
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
      
      public function get flatId() : int
      {
         return var_415;
      }
   }
}
