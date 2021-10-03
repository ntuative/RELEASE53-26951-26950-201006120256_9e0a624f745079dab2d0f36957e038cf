package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.room.IGetImageListener;
   import com.sulake.habbo.room.IRoomEngine;
   import flash.display.BitmapData;
   
   public class ProductContainer extends ProductGridItem implements IGetImageListener, IProductContainer, IGridItem
   {
       
      
      private var var_976:Array;
      
      protected var var_77:Offer;
      
      private var var_474:int;
      
      public function ProductContainer(param1:Offer, param2:Array)
      {
         super();
         var_77 = param1;
         var_976 = param2;
      }
      
      public function imageReady(param1:int, param2:BitmapData) : void
      {
         setIconImage(param2);
      }
      
      public function initProductIcon(param1:IRoomEngine) : void
      {
      }
      
      public function get iconCallbackId() : int
      {
         return var_474;
      }
      
      public function get offer() : Offer
      {
         return var_77;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         super.dispose();
         for each(_loc1_ in var_976)
         {
            _loc1_.dispose();
         }
         var_976 = null;
         var_474 = 0;
      }
      
      public function get products() : Array
      {
         return var_976;
      }
      
      public function get firstProduct() : IProduct
      {
         return var_976[0] as IProduct;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_474 = param1;
      }
   }
}
