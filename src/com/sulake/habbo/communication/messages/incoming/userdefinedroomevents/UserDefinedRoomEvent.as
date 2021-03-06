package com.sulake.habbo.communication.messages.incoming.userdefinedroomevents
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class UserDefinedRoomEvent implements IDisposable
   {
       
      
      private var var_1137:Array;
      
      private var _disposed:Boolean;
      
      private var var_2239:int;
      
      private var _id:int;
      
      private var var_225:Array;
      
      public function UserDefinedRoomEvent(param1:IMessageDataWrapper)
      {
         var_225 = new Array();
         var_1137 = new Array();
         super();
         _id = param1.readInteger();
         var_2239 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_1137.push(new TriggerDefinition(param1));
            _loc3_++;
         }
         _loc2_ = param1.readInteger();
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            var_225.push(new ActionDefinition(param1));
            _loc3_++;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get triggers() : Array
      {
         return var_1137;
      }
      
      public function get propagation() : int
      {
         return var_2239;
      }
      
      public function get actions() : Array
      {
         return var_225;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         var_225 = null;
         var_1137 = null;
      }
   }
}
