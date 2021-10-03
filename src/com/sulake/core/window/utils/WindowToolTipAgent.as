package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_341:Timer;
      
      protected var var_1015:String;
      
      protected var var_1014:uint;
      
      protected var var_1194:Point;
      
      protected var var_258:IToolTipWindow;
      
      protected var var_1193:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1194 = new Point();
         var_1193 = new Point(20,20);
         var_1014 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_341 != null)
         {
            var_341.stop();
            var_341.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_341 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1194);
            if(var_258 != null && true)
            {
               var_258.x = param1 + var_1193.x;
               var_258.y = param2 + var_1193.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_341 != null)
         {
            var_341.reset();
         }
         if(_window && true)
         {
            if(var_258 == null || false)
            {
               var_258 = _window.context.create("undefined::ToolTip",var_1015,WindowType.const_331,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_258.x = _loc2_.x + var_1194.x + var_1193.x;
            var_258.y = _loc2_.y + var_1194.y + var_1193.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_1015 = IInteractiveWindow(param1).toolTipCaption;
               var_1014 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_1015 = param1.caption;
               var_1014 = 500;
            }
            _mouse.x = var_122.mouseX;
            _mouse.y = var_122.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1194);
            if(var_1015 != null && var_1015 != "")
            {
               if(var_341 == null)
               {
                  var_341 = new Timer(var_1014,1);
                  var_341.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_341.reset();
               var_341.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_258 != null && true)
         {
            var_258.destroy();
            var_258 = null;
         }
      }
   }
}
