package com.sulake.habbo.communication.messages.outgoing.catalog
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SelectClubGiftComposer implements IMessageComposer
   {
       
      
      private var var_1419:String;
      
      public function SelectClubGiftComposer(param1:String)
      {
         super();
         var_1419 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1419];
      }
      
      public function dispose() : void
      {
         var_1419 = null;
      }
   }
}
