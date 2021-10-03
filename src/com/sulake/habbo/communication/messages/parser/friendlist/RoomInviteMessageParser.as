package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomInviteMessageParser implements IMessageParser
   {
       
      
      private var var_1836:String;
      
      private var var_1162:int;
      
      public function RoomInviteMessageParser()
      {
         super();
      }
      
      public function get senderId() : int
      {
         return this.var_1162;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1162 = param1.readInteger();
         this.var_1836 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get messageText() : String
      {
         return this.var_1836;
      }
   }
}
