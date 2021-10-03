package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1843:int;
      
      private var var_1344:PetData;
      
      private var var_2209:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1843;
      }
      
      public function get petData() : PetData
      {
         return var_1344;
      }
      
      public function flush() : Boolean
      {
         var_1344 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_2209;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1843 = param1.readInteger();
         var_2209 = param1.readInteger();
         var_1344 = new PetData(param1);
         return true;
      }
   }
}
