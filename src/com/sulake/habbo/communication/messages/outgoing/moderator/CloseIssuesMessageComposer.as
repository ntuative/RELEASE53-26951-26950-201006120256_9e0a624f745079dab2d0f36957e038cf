package com.sulake.habbo.communication.messages.outgoing.moderator
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class CloseIssuesMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_32:Array;
      
      public function CloseIssuesMessageComposer(param1:Array, param2:int)
      {
         var_32 = new Array();
         super();
         this.var_32.push(param2);
         this.var_32.push(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            this.var_32.push(param1[_loc3_]);
            _loc3_++;
         }
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
      
      public function getMessageArray() : Array
      {
         return this.var_32;
      }
      
      public function dispose() : void
      {
         this.var_32 = null;
      }
   }
}
