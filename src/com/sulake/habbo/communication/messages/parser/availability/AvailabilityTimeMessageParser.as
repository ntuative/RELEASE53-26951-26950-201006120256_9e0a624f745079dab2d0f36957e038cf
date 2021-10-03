package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityTimeMessageParser implements IMessageParser
   {
       
      
      private var var_1171:Boolean;
      
      private var var_1272:int;
      
      public function AvailabilityTimeMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1171 = param1.readInteger() > 0;
         var_1272 = param1.readInteger();
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1171;
      }
      
      public function flush() : Boolean
      {
         var_1171 = false;
         var_1272 = 0;
         return true;
      }
      
      public function get minutesUntilChange() : int
      {
         return var_1272;
      }
   }
}
