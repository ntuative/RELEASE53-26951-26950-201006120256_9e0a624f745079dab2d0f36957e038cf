package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1674:int = 2;
      
      public static const const_1664:int = 1;
      
      public static const const_1485:int = 0;
       
      
      private var var_1429:int;
      
      private var var_149:int;
      
      private var var_2523:int;
      
      private var _offerId:int;
      
      private var var_2121:int;
      
      private var _furniId:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         _furniId = param2;
         var_2121 = param3;
         var_1429 = param4;
      }
      
      public function get furniId() : int
      {
         return _furniId;
      }
      
      public function get furniType() : int
      {
         return var_2121;
      }
      
      public function get price() : int
      {
         return var_1429;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
