package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_454:String;
      
      private var var_1839:int;
      
      private var var_2109:String;
      
      private var var_1060:int;
      
      private var var_1247:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1247;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1247 = param1.readInteger();
         var_2109 = param1.readString();
         var_1839 = param1.readInteger();
         var_454 = param1.readString();
         var_1060 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2109;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_454;
      }
      
      public function get petType() : int
      {
         return var_1060;
      }
      
      public function get level() : int
      {
         return var_1839;
      }
   }
}
