package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2335:String;
      
      private var var_1329:String;
      
      private var var_2336:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2336 = param1;
         var_1329 = param2;
         var_2335 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2336,var_1329,var_2335];
      }
      
      public function dispose() : void
      {
      }
   }
}
