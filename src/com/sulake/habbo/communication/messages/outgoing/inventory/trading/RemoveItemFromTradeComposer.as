package com.sulake.habbo.communication.messages.outgoing.inventory.trading
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RemoveItemFromTradeComposer implements IMessageComposer
   {
       
      
      private var var_1803:int;
      
      public function RemoveItemFromTradeComposer(param1:int)
      {
         super();
         var_1803 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [var_1803];
      }
   }
}
