package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1886:int;
      
      private var var_1074:int;
      
      private var var_1885:int;
      
      private var var_1538:int;
      
      private var var_113:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1538 = param1.readInteger();
         var_1885 = param1.readInteger();
         var_1074 = param1.readInteger();
         var_1886 = param1.readInteger();
         var_113 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1538);
      }
      
      public function get chatRecordId() : int
      {
         return var_1886;
      }
      
      public function get reportedUserId() : int
      {
         return var_1074;
      }
      
      public function get callerUserId() : int
      {
         return var_1885;
      }
      
      public function get callId() : int
      {
         return var_1538;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_113;
      }
   }
}
