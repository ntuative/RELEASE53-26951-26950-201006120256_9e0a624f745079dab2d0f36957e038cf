package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_865:String = "price_type_none";
      
      public static const const_439:String = "pricing_model_multi";
      
      public static const const_307:String = "price_type_credits";
      
      public static const const_511:String = "price_type_credits_and_pixels";
      
      public static const const_400:String = "pricing_model_bundle";
      
      public static const const_504:String = "pricing_model_single";
      
      public static const const_530:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1180:String = "pricing_model_unknown";
      
      public static const const_496:String = "price_type_pixels";
       
      
      private var var_2078:int;
      
      private var var_921:int;
      
      private var _offerId:int;
      
      private var var_920:int;
      
      private var var_429:String;
      
      private var var_640:String;
      
      private var var_446:ICatalogPage;
      
      private var var_428:IProductContainer;
      
      private var var_1360:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1360 = param1.localizationId;
         var_921 = param1.priceInCredits;
         var_920 = param1.priceInPixels;
         var_446 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_429;
      }
      
      public function get page() : ICatalogPage
      {
         return var_446;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2078 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_428;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_920;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1360 = "";
         var_921 = 0;
         var_920 = 0;
         var_446 = null;
         if(var_428 != null)
         {
            var_428.dispose();
            var_428 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_2078;
      }
      
      public function get priceInCredits() : int
      {
         return var_921;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_429 = const_504;
            }
            else
            {
               var_429 = const_439;
            }
         }
         else if(param1.length > 1)
         {
            var_429 = const_400;
         }
         else
         {
            var_429 = const_1180;
         }
      }
      
      public function get priceType() : String
      {
         return var_640;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_429)
         {
            case const_504:
               var_428 = new SingleProductContainer(this,param1);
               break;
            case const_439:
               var_428 = new MultiProductContainer(this,param1);
               break;
            case const_400:
               var_428 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_429);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1360;
      }
      
      private function analyzePriceType() : void
      {
         if(var_921 > 0 && var_920 > 0)
         {
            var_640 = const_511;
         }
         else if(var_921 > 0)
         {
            var_640 = const_307;
         }
         else if(var_920 > 0)
         {
            var_640 = const_496;
         }
         else
         {
            var_640 = const_865;
         }
      }
   }
}
