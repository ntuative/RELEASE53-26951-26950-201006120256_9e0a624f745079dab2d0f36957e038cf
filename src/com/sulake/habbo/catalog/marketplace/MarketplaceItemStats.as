package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1602:Array;
      
      private var var_1922:int;
      
      private var var_1923:int;
      
      private var var_1925:int;
      
      private var var_1924:int;
      
      private var _dayOffsets:Array;
      
      private var var_1926:int;
      
      private var var_1603:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1602;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1602 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1923;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1603 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1922 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1925;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1924;
      }
      
      public function get offerCount() : int
      {
         return var_1926;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1926 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1603;
      }
      
      public function get averagePrice() : int
      {
         return var_1922;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1924 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1925 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1923 = param1;
      }
   }
}
