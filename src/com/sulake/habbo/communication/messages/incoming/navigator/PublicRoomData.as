package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2148:int;
      
      private var var_2355:String;
      
      private var var_2132:int;
      
      private var _disposed:Boolean;
      
      private var var_2356:int;
      
      private var var_2133:String;
      
      private var var_1401:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_2133 = param1.readString();
         var_2148 = param1.readInteger();
         var_2132 = param1.readInteger();
         var_2355 = param1.readString();
         var_2356 = param1.readInteger();
         var_1401 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2356;
      }
      
      public function get worldId() : int
      {
         return var_2132;
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
      }
      
      public function get unitPropertySet() : String
      {
         return var_2133;
      }
      
      public function get unitPort() : int
      {
         return var_2148;
      }
      
      public function get castLibs() : String
      {
         return var_2355;
      }
      
      public function get nodeId() : int
      {
         return var_1401;
      }
   }
}
