package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var var_551:ToolbarIconGroup;
      
      private var var_1145:Boolean = false;
      
      private var var_2273:String;
      
      private var var_945:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_1143:String = "-1";
      
      private var _window:IBitmapWrapperWindow;
      
      private var var_35:String = "-1";
      
      private var var_101:IRegionWindow;
      
      private var _bitmapData:BitmapData;
      
      private var var_788:String;
      
      private var var_2272:int;
      
      private var var_787:Timer;
      
      private var var_1656:Array;
      
      private var var_1146:ToolbarIconBouncer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_2463:Array;
      
      private var var_287:ToolbarBarMenuAnimator;
      
      private var var_449:ToolbarIconAnimator;
      
      private var var_659:Array;
      
      private var var_966:Array;
      
      private var var_965:String = "-1";
      
      private var var_2522:Boolean = true;
      
      private var var_1144:Array;
      
      private var var_1413:Timer;
      
      private var var_2271:int;
      
      private var var_81:Number = 0;
      
      private var _y:Number = 0;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         var_659 = new Array();
         var_966 = new Array();
         var_2463 = new Array();
         var_1146 = new ToolbarIconBouncer(0.8,1);
         super();
         var_551 = param1;
         _windowManager = param2;
         _assetLibrary = param3;
         var_788 = param4;
         _events = param5;
         var_287 = param6;
         var_1413 = new Timer(40,40);
         var_1413.addEventListener(TimerEvent.TIMER,updateBouncer);
         var_101 = param2.createWindow("TOOLBAR_ICON_" + param4 + "_REGION","",WindowType.const_506,HabboWindowStyle.const_41,HabboWindowParam.const_43,new Rectangle(0,0,1,1),onMouseEvent) as IRegionWindow;
         var_101.background = true;
         var_101.mouseTreshold = 0;
         var_101.visible = false;
         _window = IBitmapWrapperWindow(param2.createWindow("TOOLBAR_ICON_" + param4,"",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_41,HabboWindowParam.const_41,new Rectangle(0,0,1,1),onMouseEvent,0));
         var_101.addChild(_window);
         _window.addEventListener(WindowEvent.const_47,onWindowResized);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return var_1656[var_1144.indexOf(param1)];
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return var_2271;
      }
      
      public function get iconId() : String
      {
         return var_788;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         updateRegion();
      }
      
      public function changePosition(param1:Number) : void
      {
         var_945 = param1;
         updateRegion();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         exists = param1;
         setAnimator();
      }
      
      public function set state(param1:String) : void
      {
         var_35 = param1;
         exists = true;
         setAnimator();
         setTooltip();
      }
      
      private function updateRegion() : void
      {
         if(var_101 == null || _window == null)
         {
            return;
         }
         var_101.width = _window.width;
         var_101.height = _window.height;
         var _loc1_:Boolean = false;
         if(_loc1_)
         {
            var_81 = (0 - 0) / 2;
            _y = var_945 + (0 - 0) / 2;
         }
         else
         {
            var_81 = var_945 + (0 - 0) / 2;
            _y = (0 - 0) / 2;
         }
         var_101.x = var_81;
         var_101.y = _y;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_101 != null)
         {
            var_101.dispose();
            var_101 = null;
         }
         var_659 = null;
         var_966 = null;
         exists = false;
         _windowManager = null;
         _events = null;
         var_287 = null;
         var_449 = null;
         _bitmapData = null;
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(var_659.indexOf(param1) < 0)
         {
            var_659.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            var_966.push(_loc4_);
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!var_1145)
         {
            return;
         }
         var _loc3_:StateItem = getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(var_287)
               {
                  var_287.repositionWindow(var_788,true);
               }
               if(_events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_63);
                  _loc4_.iconId = var_788;
                  _events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(false)
               {
                  if(_loc3_.hasStateOver)
                  {
                     state = _loc3_.stateOver;
                  }
                  else
                  {
                     state = var_1143;
                  }
               }
               break;
            case WindowMouseEvent.const_33:
               if(false)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     state = _loc3_.defaultState;
                  }
                  else
                  {
                     state = var_965;
                  }
               }
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return var_659.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = var_966[var_659.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function set exists(param1:Boolean) : void
      {
         var_1145 = param1;
         if(var_101 != null)
         {
            var_101.visible = var_1145;
         }
      }
      
      private function setTooltip() : void
      {
         if(var_101 == null)
         {
            return;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            var_101.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            var_101.toolTipCaption = "${toolbar.icon.tooltip." + var_2273.toLowerCase() + "}";
         }
         var_101.toolTipDelay = 100;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(var_287 != null)
         {
            var_287.animateWindowIn(this,param1,param2,var_788,param3,param4,getMenuYieldList(param1));
         }
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(var_449 != null && _window != null)
         {
            var_449.update(_window);
            if(var_449.hasNextState())
            {
               state = var_449.nextState;
            }
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_1656 = new Array();
         var_1144 = new Array();
         var_2273 = param1.@id;
         var_2271 = int(param1.@window_offset_from_icon);
         var_2272 = int(param1.@window_margin);
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               var_1143 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               var_965 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               var_1144.push(_loc5_.id);
               var_1656.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(var_1143 == "-1")
                  {
                     var_1143 = _loc5_.id;
                  }
                  if(var_965 == "-1")
                  {
                     var_965 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         var_35 = var_965;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         exists = true;
         _bitmapData = param1;
         setAnimator();
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_287 != null)
         {
            var_287.hideWindow(param1,param2,var_788,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_287 != null)
         {
            var_287.positionWindow(this,param1,param2,var_788,param3,getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(var_287 != null)
         {
            var_287.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get exists() : Boolean
      {
         return var_1145;
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(var_1146 != null && _window != null)
         {
            var_1146.update();
            _window.y = var_1146.location;
         }
      }
      
      private function setAnimator() : void
      {
         if(var_787 != null)
         {
            var_787.stop();
            var_787 = null;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && var_1145)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            var_449 = new ToolbarIconAnimator(_loc1_,_assetLibrary,_window,var_81,_y,_bitmapData);
            if(false)
            {
               var_787 = new Timer(_loc1_.timer);
               var_787.addEventListener(TimerEvent.TIMER,updateAnimator);
               var_787.start();
            }
            if(_loc1_.bounce)
            {
               var_1146.reset(-7);
               var_1413.reset();
               var_1413.start();
            }
         }
         else
         {
            var_449 = null;
            _window.bitmap = null;
         }
      }
      
      public function get windowMargin() : Number
      {
         return var_2272 + var_551.windowMargin;
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return getStateObject(var_35);
      }
      
      public function get window() : IWindow
      {
         return var_101;
      }
      
      public function get x() : Number
      {
         return var_81;
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = var_966[var_659.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return var_551;
      }
   }
}
