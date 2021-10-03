package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_2072:int;
      
      private var var_1429:int;
      
      private var var_2071:int;
      
      private var _offerId:int;
      
      private var var_2073:int;
      
      private var var_2076:int;
      
      private var var_2074:Boolean;
      
      private var var_2070:int;
      
      private var var_2075:Boolean;
      
      private var var_1419:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1419 = param1.readString();
         var_1429 = param1.readInteger();
         var_2075 = param1.readBoolean();
         var_2074 = param1.readBoolean();
         var_2071 = param1.readInteger();
         var_2070 = param1.readInteger();
         var_2073 = param1.readInteger();
         var_2072 = param1.readInteger();
         var_2076 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_2073;
      }
      
      public function get month() : int
      {
         return var_2072;
      }
      
      public function get price() : int
      {
         return var_1429;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_2071;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_2070;
      }
      
      public function get upgrade() : Boolean
      {
         return var_2075;
      }
      
      public function get day() : int
      {
         return var_2076;
      }
      
      public function get vip() : Boolean
      {
         return var_2074;
      }
      
      public function get productCode() : String
      {
         return var_1419;
      }
   }
}
