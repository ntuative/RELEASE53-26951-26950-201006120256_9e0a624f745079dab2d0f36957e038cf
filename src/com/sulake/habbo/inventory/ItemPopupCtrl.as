package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1136:int = 100;
      
      private static const const_1137:int = 200;
      
      private static const const_1138:int = 180;
      
      public static const const_1037:int = 1;
      
      public static const const_484:int = 2;
      
      private static const const_1135:int = 250;
      
      private static const const_799:int = 5;
       
      
      private var var_651:BitmapData;
      
      private var var_323:Timer;
      
      private var var_9:IWindowContainer;
      
      private var var_777:BitmapData;
      
      private var var_322:Timer;
      
      private var var_72:IWindowContainer;
      
      private var var_1630:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_322 = new Timer(const_1135,1);
         var_323 = new Timer(const_1136,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_72 = param1;
         var_72.visible = false;
         _assets = param2;
         var_322.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_323.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_777 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_651 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_72.visible = false;
         var_323.reset();
         var_322.reset();
         if(var_9 != null)
         {
            var_9.removeChild(var_72);
         }
      }
      
      public function hideDelayed() : void
      {
         var_323.reset();
         var_322.reset();
         var_323.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_322 != null)
         {
            var_322.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_322.stop();
            var_322 = null;
         }
         if(var_323 != null)
         {
            var_323.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_323.stop();
            var_323 = null;
         }
         _assets = null;
         var_72 = null;
         var_9 = null;
         var_651 = null;
         var_777 = null;
      }
      
      public function showDelayed() : void
      {
         var_323.reset();
         var_322.reset();
         var_322.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_72 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_9 != null)
         {
            var_9.removeChild(var_72);
         }
         var_9 = param1;
         var_1630 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_72.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_72.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1138,param3.width),Math.min(const_1137,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_72.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_72 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_72.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_1037:
               _loc2_.bitmap = var_777.clone();
               _loc2_.width = var_777.width;
               _loc2_.height = var_777.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_484:
               _loc2_.bitmap = var_651.clone();
               _loc2_.width = var_651.width;
               _loc2_.height = var_651.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_323.reset();
         var_322.reset();
         if(var_9 == null)
         {
            return;
         }
         var_72.visible = true;
         var_9.addChild(var_72);
         refreshArrow(var_1630);
         switch(var_1630)
         {
            case const_1037:
               var_72.x = 0 - const_799;
               break;
            case const_484:
               var_72.x = var_9.width + const_799;
         }
         var_72.y = (0 - 0) / 2;
      }
   }
}
