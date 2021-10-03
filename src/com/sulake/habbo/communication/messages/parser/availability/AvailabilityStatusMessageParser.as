package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1171:Boolean;
      
      private var var_1353:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1171 = param1.readInteger() > 0;
         var_1353 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1171;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1353;
      }
      
      public function flush() : Boolean
      {
         var_1171 = false;
         var_1353 = false;
         return true;
      }
   }
}
