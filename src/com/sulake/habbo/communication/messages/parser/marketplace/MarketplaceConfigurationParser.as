package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_2158:int;
      
      private var var_1612:int;
      
      private var var_2161:int;
      
      private var var_2164:int;
      
      private var var_2160:int;
      
      private var var_1613:int;
      
      private var var_2163:int;
      
      private var var_1434:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_2158;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1612;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_2163;
      }
      
      public function get offerMinPrice() : int
      {
         return var_2164;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_2160;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1613;
      }
      
      public function get commission() : int
      {
         return var_2161;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1434 = param1.readBoolean();
         var_2161 = param1.readInteger();
         var_1612 = param1.readInteger();
         var_1613 = param1.readInteger();
         var_2164 = param1.readInteger();
         var_2158 = param1.readInteger();
         var_2160 = param1.readInteger();
         var_2163 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1434;
      }
   }
}
