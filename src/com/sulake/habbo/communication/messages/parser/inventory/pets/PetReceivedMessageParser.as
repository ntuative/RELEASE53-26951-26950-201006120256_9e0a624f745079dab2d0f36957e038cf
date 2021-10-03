package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1106:PetData;
      
      private var var_1601:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1601 = param1.readBoolean();
         var_1106 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1601 + ", " + var_1106.id + ", " + var_1106.name + ", " + pet.figure + ", " + var_1106.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1601;
      }
      
      public function get pet() : PetData
      {
         return var_1106;
      }
   }
}
