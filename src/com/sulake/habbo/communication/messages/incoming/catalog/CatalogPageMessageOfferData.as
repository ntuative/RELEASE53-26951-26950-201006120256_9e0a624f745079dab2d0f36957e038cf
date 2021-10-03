package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_976:Array;
      
      private var var_921:int;
      
      private var var_1360:String;
      
      private var _offerId:int;
      
      private var var_920:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1360 = param1.readString();
         var_921 = param1.readInteger();
         var_920 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_976 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_976.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_976;
      }
      
      public function get priceInCredits() : int
      {
         return var_921;
      }
      
      public function get localizationId() : String
      {
         return var_1360;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_920;
      }
   }
}
