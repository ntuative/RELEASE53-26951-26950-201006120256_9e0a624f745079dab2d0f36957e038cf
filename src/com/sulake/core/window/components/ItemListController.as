package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowStyle;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowNotifyEvent;
   import com.sulake.core.window.graphics.WindowRedrawFlag;
   import com.sulake.core.window.utils.IIterator;
   import com.sulake.core.window.utils.Iterator;
   import com.sulake.core.window.utils.PropertyStruct;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class ItemListController extends WindowController implements IItemListWindow
   {
      
      protected static const const_1056:String = "resize_on_item_update";
      
      protected static const const_1057:String = "spacing";
      
      protected static const const_1440:Boolean = false;
      
      protected static const DEF_SPACING:int = 0;
      
      protected static const const_1055:String = "scale_to_fit_items";
      
      protected static const DEF_RESIZE_ON_ITEM_UPDATE:Boolean = false;
      
      protected static const const_1441:Boolean = true;
      
      protected static const const_1058:String = "auto_arrange_items";
       
      
      protected var _container:IWindowContainer;
      
      protected var _spacing:int = 0;
      
      protected var var_69:Number;
      
      protected var var_2480:Number = 0.0;
      
      protected var var_578:Boolean = false;
      
      protected var var_2481:Number = 0.0;
      
      protected var var_580:Number;
      
      protected var var_1190:Boolean = false;
      
      protected var var_579:Number;
      
      protected var var_193:Boolean = false;
      
      protected var var_92:Number;
      
      protected var var_1479:Boolean = false;
      
      protected var _horizontal:Boolean = false;
      
      protected var var_826:Boolean = true;
      
      public function ItemListController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function = null, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         var_580 = 0;
         var_579 = 0;
         var_92 = 0;
         var_69 = 0;
         _horizontal = param2 == WindowType.const_361;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         var_169 = var_687 || !testParamFlag(WindowParam.const_36);
         _container = var_16.create("_CONTAINER","",WindowType.const_350,WindowStyle.const_334,0 | 0 | 0,new Rectangle(0,0,width,height),null,this,0,null,[WindowController.INTERNAL_CHILD_TAG,WindowController.EXCLUDE_CHILD_TAG]) as IWindowContainer;
         _container.addEventListener(WindowEvent.const_47,containerEventHandler);
         _container.addEventListener(WindowEvent.const_466,containerEventHandler);
         _container.addEventListener(WindowEvent.const_256,containerEventHandler);
         _container.addEventListener(WindowEvent.const_385,containerEventHandler);
         resizeOnItemUpdate = var_1190;
      }
      
      public function swapListItemsAt(param1:int, param2:int) : void
      {
         _container.swapChildrenAt(param1,param2);
         updateScrollAreaRegion();
      }
      
      public function get visibleRegion() : Rectangle
      {
         return new Rectangle(var_580 * maxScrollH,var_579 * maxScrollV,width,height);
      }
      
      public function get maxScrollH() : int
      {
         var _loc1_:int = var_92 - width;
         return _loc1_ < 0 ? 0 : int(_loc1_);
      }
      
      public function get scrollH() : Number
      {
         return var_580;
      }
      
      override public function dispose() : void
      {
         _container.removeEventListener(WindowEvent.const_47,containerEventHandler);
         _container.removeEventListener(WindowEvent.const_466,containerEventHandler);
         _container.removeEventListener(WindowEvent.const_256,containerEventHandler);
         _container.removeEventListener(WindowEvent.const_385,containerEventHandler);
         super.dispose();
      }
      
      public function get maxScrollV() : int
      {
         var _loc1_:int = var_69 - height;
         return _loc1_ < 0 ? 0 : int(_loc1_);
      }
      
      public function get scrollV() : Number
      {
         return var_579;
      }
      
      public function set scrollH(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > 1)
         {
            param1 = 1;
         }
         if(param1 != var_580)
         {
            var_580 = param1;
            _container.x = -var_580 * maxScrollH;
            var_16.invalidate(_container,visibleRegion,WindowRedrawFlag.const_79);
         }
      }
      
      override public function get properties() : Array
      {
         var _loc1_:Array = super.properties;
         _loc1_.push(new PropertyStruct(const_1057,_spacing,PropertyStruct.const_69,_spacing != DEF_SPACING));
         _loc1_.push(new PropertyStruct(const_1058,var_826,PropertyStruct.const_59,var_826 != const_1441));
         _loc1_.push(new PropertyStruct(const_1055,var_578,PropertyStruct.const_59,var_578 != const_1440));
         _loc1_.push(new PropertyStruct(const_1056,var_1190,PropertyStruct.const_59,var_1190 != DEF_RESIZE_ON_ITEM_UPDATE));
         return _loc1_;
      }
      
      public function get scrollStepH() : Number
      {
         return !!_horizontal ? Number(0 / numListItems) : Number(0);
      }
      
      public function setListItemIndex(param1:IWindow, param2:int) : void
      {
         _container.setChildIndex(param1,param2);
      }
      
      public function get scrollStepV() : Number
      {
         return !!_horizontal ? 0 : Number(0 / numListItems);
      }
      
      public function groupListItemsWithID(param1:uint, param2:Array, param3:Boolean = false) : uint
      {
         return _container.groupChildrenWithID(param1,param2,param3);
      }
      
      public function get spacing() : int
      {
         return _spacing;
      }
      
      public function set scrollV(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > 1)
         {
            param1 = 1;
         }
         if(param1 != var_579)
         {
            var_579 = param1;
            _container.y = -var_579 * maxScrollV;
            var_16.invalidate(_container,visibleRegion,WindowRedrawFlag.const_79);
         }
      }
      
      public function set scrollStepH(param1:Number) : void
      {
         var_2480 = Math.max(param1,0);
      }
      
      override public function set properties(param1:Array) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in param1)
         {
            switch(_loc2_.key)
            {
               case const_1057:
                  spacing = _loc2_.value as int;
                  break;
               case const_1055:
                  scaleToFitItems = _loc2_.value as Boolean;
                  break;
               case const_1056:
                  resizeOnItemUpdate = _loc2_.value as Boolean;
                  break;
               case const_1058:
                  var_826 = _loc2_.value as Boolean;
                  break;
            }
         }
         super.properties = param1;
      }
      
      public function addListItemAt(param1:IWindow, param2:uint) : IWindow
      {
         param1 = _container.addChildAt(param1,param2);
         updateScrollAreaRegion();
         return param1;
      }
      
      public function get iterator() : IIterator
      {
         return new Iterator(this);
      }
      
      public function groupListItemsWithTag(param1:String, param2:Array, param3:Boolean = false) : uint
      {
         return _container.groupChildrenWithTag(param1,param2,param3);
      }
      
      public function swapListItems(param1:IWindow, param2:IWindow) : void
      {
         _container.swapChildren(param1,param2);
         updateScrollAreaRegion();
      }
      
      public function set scaleToFitItems(param1:Boolean) : void
      {
         var_578 = param1;
         updateScrollAreaRegion();
      }
      
      public function set scrollStepV(param1:Number) : void
      {
         var_2481 = Math.max(param1,0);
      }
      
      public function get scrollableRegion() : Rectangle
      {
         return _container.rectangle.clone();
      }
      
      private function containerEventHandler(param1:Event) : void
      {
         switch(param1.type)
         {
            case WindowEvent.const_466:
               updateScrollAreaRegion();
               break;
            case WindowEvent.const_256:
               if(!var_1479)
               {
                  updateScrollAreaRegion();
               }
               break;
            case WindowEvent.const_385:
               updateScrollAreaRegion();
               break;
            case WindowEvent.const_47:
               dispatchEvent(new WindowEvent(WindowEvent.const_47,this,null));
               break;
            default:
               Logger.log("ItemListController::containerEventHandler(" + param1.type + ")");
         }
      }
      
      public function removeListItem(param1:IWindow) : IWindow
      {
         param1 = _container.removeChild(param1);
         updateScrollAreaRegion();
         return param1;
      }
      
      public function arrangeListItems() : void
      {
         updateScrollAreaRegion();
      }
      
      public function get lastListItem() : IWindow
      {
         return numListItems > 0 ? getListItemAt(numListItems - 1) : null;
      }
      
      public function removeListItemAt(param1:int) : IWindow
      {
         return _container.removeChildAt(param1);
      }
      
      public function set spacing(param1:int) : void
      {
         if(param1 != _spacing)
         {
            _spacing = param1;
            updateScrollAreaRegion();
         }
      }
      
      public function addListItem(param1:IWindow) : IWindow
      {
         var_193 = true;
         if(_horizontal)
         {
            param1.x = var_92 + (numListItems > 0 ? _spacing : 0);
            var_92 = param1.rectangle.right;
            _container.width = var_92;
         }
         else
         {
            if(autoArrangeItems)
            {
               param1.y = var_69 + (numListItems > 0 ? _spacing : 0);
               var_69 = param1.rectangle.bottom;
            }
            else
            {
               var_69 = Math.max(var_69,param1.rectangle.bottom);
            }
            _container.height = var_69;
         }
         param1 = _container.addChild(param1);
         var_193 = false;
         return param1;
      }
      
      public function set autoArrangeItems(param1:Boolean) : void
      {
         var_826 = param1;
         updateScrollAreaRegion();
      }
      
      public function getListItemByID(param1:uint) : IWindow
      {
         return _container.getChildByID(param1);
      }
      
      public function set resizeOnItemUpdate(param1:Boolean) : void
      {
         var_1190 = param1;
         if(_container)
         {
            if(_horizontal)
            {
               _container.setParamFlag(WindowParam.const_501,param1);
            }
            else
            {
               _container.setParamFlag(WindowParam.WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT,param1);
            }
         }
      }
      
      public function get firstListItem() : IWindow
      {
         return numListItems > 0 ? getListItemAt(0) : null;
      }
      
      protected function updateScrollAreaRegion() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(var_826 && !var_193 && _container)
         {
            var_193 = true;
            _loc1_ = 0;
            if(_horizontal)
            {
               var_92 = 0;
               var_69 = var_8.height;
               _loc4_ = 0;
               while(_loc4_ < _loc1_)
               {
                  _loc2_ = _container.getChildAt(_loc4_);
                  if(_loc2_.visible)
                  {
                     _loc2_.x = var_92;
                     var_92 += _loc2_.width + _spacing;
                     if(var_578)
                     {
                        _loc3_ = _loc2_.height + _loc2_.y;
                        var_69 = _loc3_ > var_69 ? Number(_loc3_) : Number(var_69);
                     }
                  }
                  _loc4_++;
               }
               if(_loc1_ > 0)
               {
                  var_92 -= _spacing;
               }
            }
            else
            {
               var_92 = var_8.width;
               var_69 = 0;
               _loc4_ = 0;
               while(_loc4_ < _loc1_)
               {
                  _loc2_ = _container.getChildAt(_loc4_);
                  if(_loc2_.visible)
                  {
                     _loc2_.y = var_69;
                     var_69 += _loc2_.height + _spacing;
                     if(var_578)
                     {
                        _loc3_ = _loc2_.width + _loc2_.x;
                        var_92 = _loc3_ > var_92 ? Number(_loc3_) : Number(var_92);
                     }
                  }
                  _loc4_++;
               }
               if(_loc1_ > 0)
               {
                  var_69 -= _spacing;
               }
            }
            if(var_580 > 0)
            {
               if(var_92 <= var_8.width)
               {
                  scrollH = 0;
               }
               else
               {
                  _container.x = -(var_580 * maxScrollH);
               }
            }
            if(var_579 > 0)
            {
               if(var_69 <= var_8.height)
               {
                  scrollV = 0;
               }
               else
               {
                  _container.y = -(var_579 * maxScrollV);
               }
            }
            _container.height = var_69;
            _container.width = var_92;
            var_193 = false;
         }
      }
      
      public function getListItemByName(param1:String) : IWindow
      {
         return _container.getChildByName(param1);
      }
      
      public function removeListItems() : void
      {
         var_193 = true;
         while(numListItems > 0)
         {
            _container.removeChildAt(0);
         }
         var_193 = false;
         updateScrollAreaRegion();
      }
      
      public function get scaleToFitItems() : Boolean
      {
         return var_578;
      }
      
      override protected function cloneChildWindows(param1:WindowController) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < numListItems)
         {
            IItemListWindow(param1).addListItem(getListItemAt(_loc2_).clone());
            _loc2_++;
         }
      }
      
      override public function update(param1:WindowController, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.update(param1,param2);
         switch(param2.type)
         {
            case WindowNotifyEvent.const_378:
               break;
            case WindowNotifyEvent.const_742:
               var_1479 = true;
               break;
            case WindowNotifyEvent.const_159:
               if(!var_578)
               {
                  if(_horizontal)
                  {
                     _container.height = var_8.height;
                  }
                  else
                  {
                     _container.width = var_8.width;
                  }
               }
               updateScrollAreaRegion();
               var_1479 = false;
               break;
            case MouseEvent.MOUSE_WHEEL:
               if(_horizontal)
               {
                  scrollH -= MouseEvent(param2).delta * 0.01;
               }
               else
               {
                  scrollV -= MouseEvent(param2).delta * 0.01;
               }
               _loc3_ = true;
         }
         return _loc3_;
      }
      
      public function get autoArrangeItems() : Boolean
      {
         return var_826;
      }
      
      public function getListItemIndex(param1:IWindow) : int
      {
         return _container.getChildIndex(param1);
      }
      
      public function get resizeOnItemUpdate() : Boolean
      {
         return var_1190;
      }
      
      public function getListItemAt(param1:uint) : IWindow
      {
         return _container.getChildAt(param1);
      }
      
      public function get numListItems() : int
      {
         return _container != null ? 0 : 0;
      }
      
      public function destroyListItems() : void
      {
         var_193 = true;
         while(numListItems > 0)
         {
            _container.removeChildAt(0).destroy();
         }
         var_193 = false;
         updateScrollAreaRegion();
      }
   }
}
