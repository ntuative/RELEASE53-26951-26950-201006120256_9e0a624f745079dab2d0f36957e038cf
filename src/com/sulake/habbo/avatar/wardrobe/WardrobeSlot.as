package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class WardrobeSlot implements IOutfit, IAvatarImageListener
   {
       
      
      private var var_454:String;
      
      private var _view:IWindowContainer;
      
      private var _isDisposed:Boolean;
      
      private var var_333:IBitmapWrapperWindow;
      
      private var var_1676:int;
      
      private var var_671:String;
      
      private var var_1434:Boolean;
      
      private var _controller:HabboAvatarEditor;
      
      public function WardrobeSlot(param1:HabboAvatarEditor, param2:int, param3:Boolean, param4:String = null, param5:String = null)
      {
         super();
         _controller = param1;
         var_1676 = param2;
         createView();
         update(param4,param5,param3);
      }
      
      private function createView() : void
      {
         var _loc1_:XmlAsset = _controller.assets.getAssetByName("wardrobe_slot") as XmlAsset;
         if(!_loc1_)
         {
            return;
         }
         _view = _controller.windowManager.buildFromXML(_loc1_.content as XML) as IWindowContainer;
         _view.procedure = eventHandler;
         _view.visible = false;
         var_333 = _view.findChildByName("image") as IBitmapWrapperWindow;
      }
      
      public function update(param1:String, param2:String, param3:Boolean) : void
      {
         switch(param2)
         {
            case FigureData.const_73:
            case "m":
            case "M":
               param2 = "null";
               break;
            case FigureData.FEMALE:
            case "f":
            case "F":
               param2 = "null";
         }
         var_454 = param1;
         var_671 = param2;
         var_1434 = param3;
         updateView();
      }
      
      public function updateView() : void
      {
         var _loc1_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc2_:Boolean = true;
         if(var_454 && var_1434)
         {
            _loc5_ = _controller.avatarRenderManager.createAvatarImage(figure,AvatarScaleType.SMALL,var_671,this);
            if(_loc5_)
            {
               _loc5_.setDirection(AvatarSetType.const_35,parseInt(FigureData.const_589));
               _loc1_ = _loc5_.getCroppedImage(AvatarSetType.const_35);
               _loc5_.dispose();
            }
         }
         else
         {
            _loc6_ = _controller.assets.getAssetByName("wardrobe_empty_slot") as BitmapDataAsset;
            if(_loc6_)
            {
               _loc1_ = _loc6_.content as BitmapData;
               _loc2_ = false;
            }
         }
         if(!_loc1_)
         {
            return;
         }
         if(var_333)
         {
            if(false)
            {
               var_333.bitmap.dispose();
            }
            var_333.bitmap = new BitmapData(var_333.width,var_333.height,true,0);
            _loc7_ = (0 - _loc1_.width) / 2;
            _loc8_ = (0 - _loc1_.height) / 2;
            var_333.bitmap.draw(_loc1_,new Matrix(1,0,0,1,_loc7_,_loc8_));
         }
         if(_loc2_)
         {
            _loc1_.dispose();
         }
         var _loc3_:IContainerButtonWindow = _view.findChildByName("set_button") as IContainerButtonWindow;
         if(_loc3_)
         {
            _loc3_.visible = var_1434;
         }
         var _loc4_:IContainerButtonWindow = _view.findChildByName("get_button") as IContainerButtonWindow;
         if(_loc4_)
         {
            _loc4_.visible = var_1434 && var_454 != null;
         }
      }
      
      private function eventHandler(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         switch(param2.name)
         {
            case "set_button":
               var_454 = _controller.figureData.getFigureString();
               var_671 = _controller.gender;
               _controller.handler.saveWardrobeOutfit(var_1676,this);
               updateView();
               break;
            case "get_button":
               if(var_454)
               {
                  _controller.loadAvatarInEditor(var_454,var_671,_controller.clubMemberLevel);
               }
         }
      }
      
      public function get gender() : String
      {
         return var_671;
      }
      
      public function get id() : int
      {
         return var_1676;
      }
      
      public function get figure() : String
      {
         return var_454;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         _controller = null;
         var_454 = null;
         var_671 = null;
         var_333 = null;
         if(_view)
         {
            _view.dispose();
            _view = null;
         }
         _isDisposed = true;
      }
      
      public function get view() : IWindowContainer
      {
         return _view;
      }
      
      public function avatarImageReady(param1:String) : void
      {
         updateView();
      }
   }
}
