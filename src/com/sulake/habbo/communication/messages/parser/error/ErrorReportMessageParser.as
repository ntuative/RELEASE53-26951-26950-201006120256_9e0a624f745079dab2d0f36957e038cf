package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1298:int;
      
      private var var_1207:int;
      
      private var var_1297:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1298;
      }
      
      public function flush() : Boolean
      {
         var_1207 = 0;
         var_1298 = 0;
         var_1297 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1207;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1298 = param1.readInteger();
         var_1207 = param1.readInteger();
         var_1297 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1297;
      }
   }
}
