package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1697:String;
      
      private var var_1976:int;
      
      private var var_1974:int;
      
      private var var_1977:int;
      
      private var var_1975:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1976 = param1.readInteger();
         var_1977 = param1.readInteger();
         var_1974 = param1.readInteger();
         var_1975 = param1.readString();
         var_1697 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1697;
      }
      
      public function get hour() : int
      {
         return var_1976;
      }
      
      public function get minute() : int
      {
         return var_1977;
      }
      
      public function get chatterName() : String
      {
         return var_1975;
      }
      
      public function get chatterId() : int
      {
         return var_1974;
      }
   }
}
