package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_2072:int;
      
      private var var_2077:Boolean = false;
      
      private var var_2071:int;
      
      private var var_2073:int;
      
      private var var_2070:int;
      
      private var var_1419:String;
      
      private var var_1429:int;
      
      private var _offerId:int;
      
      private var var_2076:int;
      
      private var var_2074:Boolean;
      
      private var var_2075:Boolean;
      
      private var var_446:ICatalogPage;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         _offerId = param1;
         var_1419 = param2;
         var_1429 = param3;
         var_2075 = param4;
         var_2074 = param5;
         var_2071 = param6;
         var_2070 = param7;
         var_2073 = param8;
         var_2072 = param9;
         var_2076 = param10;
      }
      
      public function get month() : int
      {
         return var_2072;
      }
      
      public function get page() : ICatalogPage
      {
         return var_446;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get vip() : Boolean
      {
         return var_2074;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         var_446 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get priceInPixels() : int
      {
         return 0;
      }
      
      public function get priceType() : String
      {
         return Offer.const_307;
      }
      
      public function get upgrade() : Boolean
      {
         return var_2075;
      }
      
      public function get localizationId() : String
      {
         return var_1419;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_2070;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return var_2077;
      }
      
      public function get day() : int
      {
         return var_2076;
      }
      
      public function get year() : int
      {
         return var_2073;
      }
      
      public function get price() : int
      {
         return var_1429;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         var_2077 = param1;
      }
      
      public function get periods() : int
      {
         return var_2071;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get priceInCredits() : int
      {
         return var_1429;
      }
      
      public function get productCode() : String
      {
         return var_1419;
      }
   }
}
