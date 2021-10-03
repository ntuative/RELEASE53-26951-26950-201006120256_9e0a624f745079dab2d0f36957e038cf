package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1026:Boolean;
      
      private var var_1025:Boolean;
      
      private var var_1027:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1026;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1025;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1027 = param1.readBoolean();
         var_1025 = param1.readBoolean();
         var_1026 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1027;
      }
      
      public function flush() : Boolean
      {
         var_1027 = false;
         var_1025 = false;
         var_1026 = false;
         return true;
      }
   }
}
