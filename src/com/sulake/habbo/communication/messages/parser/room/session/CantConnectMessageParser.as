package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1612:int = 2;
      
      public static const const_1260:int = 4;
      
      public static const const_1227:int = 1;
      
      public static const const_1263:int = 3;
       
      
      private var var_1078:int = 0;
      
      private var var_898:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1078;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1078 = param1.readInteger();
         if(var_1078 == 3)
         {
            var_898 = param1.readString();
         }
         else
         {
            var_898 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1078 = 0;
         var_898 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_898;
      }
   }
}
