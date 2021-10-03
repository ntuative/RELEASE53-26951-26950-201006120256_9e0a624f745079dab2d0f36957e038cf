package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1429:int;
      
      private var var_1922:int;
      
      private var var_2122:int = -1;
      
      private var var_149:int;
      
      private var var_2121:int;
      
      private var _offerId:int;
      
      private var var_1428:int;
      
      private var _furniId:int;
      
      private var var_1478:String;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         _offerId = param1;
         _furniId = param2;
         var_2121 = param3;
         var_1478 = param4;
         var_1429 = param5;
         var_149 = param6;
         var_2122 = param7;
         var_1922 = param8;
         var_1428 = param9;
      }
      
      public function get status() : int
      {
         return var_149;
      }
      
      public function get price() : int
      {
         return var_1429;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_2122;
      }
      
      public function get offerCount() : int
      {
         return var_1428;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_2121;
      }
      
      public function get averagePrice() : int
      {
         return var_1922;
      }
      
      public function get furniId() : int
      {
         return _furniId;
      }
      
      public function get stuffData() : String
      {
         return var_1478;
      }
   }
}
