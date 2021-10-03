package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_2187:XML;
      
      private var var_1619:ITextWindow;
      
      private var var_1620:ITextWindow;
      
      private var var_2190:XML;
      
      private var var_942:IWindowContainer;
      
      private var var_2458:ITextWindow;
      
      private var var_2189:String = "";
      
      private var var_2518:IButtonWindow;
      
      private var var_2186:XML;
      
      private var var_1618:ITextWindow;
      
      private var var_2188:XML;
      
      private var var_943:IButtonWindow;
      
      private var var_77:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_307:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2190) as IWindowContainer;
               break;
            case Offer.const_496:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2188) as IWindowContainer;
               break;
            case Offer.const_511:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2187) as IWindowContainer;
               break;
            case Offer.const_530:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2186) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_942 != null)
            {
               _window.removeChild(var_942);
               var_942.dispose();
            }
            var_942 = _loc2_;
            _window.addChild(_loc2_);
            var_942.x = 0;
            var_942.y = 0;
         }
         var_1618 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1620 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1619 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2458 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_943 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_943 != null)
         {
            var_943.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_943.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_77 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_77,page,var_2189);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_2190 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_2188 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_2187 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_2186 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_826,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_2189 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_77 = param1.offer;
         attachStub(var_77.priceType);
         if(var_1618 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_77.priceInCredits));
            var_1618.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1620 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_77.priceInPixels));
            var_1620.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1619 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_77.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_77.priceInPixels));
            var_1619.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_943 != null)
         {
            var_943.enable();
         }
      }
   }
}
