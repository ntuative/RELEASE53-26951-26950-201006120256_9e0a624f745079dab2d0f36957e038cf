package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_256:String = "WE_CHILD_RESIZED";
      
      public static const const_1398:String = "WE_CLOSE";
      
      public static const const_1284:String = "WE_DESTROY";
      
      public static const const_127:String = "WE_CHANGE";
      
      public static const const_1239:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1681:String = "WE_PARENT_RESIZE";
      
      public static const const_101:String = "WE_UPDATE";
      
      public static const const_1234:String = "WE_MAXIMIZE";
      
      public static const const_417:String = "WE_DESTROYED";
      
      public static const const_854:String = "WE_UNSELECT";
      
      public static const const_1185:String = "WE_MAXIMIZED";
      
      public static const const_1649:String = "WE_UNLOCKED";
      
      public static const const_466:String = "WE_CHILD_REMOVED";
      
      public static const const_178:String = "WE_OK";
      
      public static const const_47:String = "WE_RESIZED";
      
      public static const const_1277:String = "WE_ACTIVATE";
      
      public static const const_262:String = "WE_ENABLED";
      
      public static const const_385:String = "WE_CHILD_RELOCATED";
      
      public static const const_1314:String = "WE_CREATE";
      
      public static const const_641:String = "WE_SELECT";
      
      public static const const_170:String = "";
      
      public static const const_1514:String = "WE_LOCKED";
      
      public static const const_1657:String = "WE_PARENT_RELOCATE";
      
      public static const const_1662:String = "WE_CHILD_REMOVE";
      
      public static const const_1545:String = "WE_CHILD_RELOCATE";
      
      public static const const_1590:String = "WE_LOCK";
      
      public static const const_205:String = "WE_FOCUSED";
      
      public static const const_745:String = "WE_UNSELECTED";
      
      public static const const_1030:String = "WE_DEACTIVATED";
      
      public static const const_1305:String = "WE_MINIMIZED";
      
      public static const const_1663:String = "WE_ARRANGED";
      
      public static const const_1601:String = "WE_UNLOCK";
      
      public static const const_1678:String = "WE_ATTACH";
      
      public static const const_1195:String = "WE_OPEN";
      
      public static const const_1335:String = "WE_RESTORE";
      
      public static const const_1551:String = "WE_PARENT_RELOCATED";
      
      public static const const_1287:String = "WE_RELOCATE";
      
      public static const const_1493:String = "WE_CHILD_RESIZE";
      
      public static const const_1547:String = "WE_ARRANGE";
      
      public static const const_1428:String = "WE_OPENED";
      
      public static const const_1224:String = "WE_CLOSED";
      
      public static const const_1515:String = "WE_DETACHED";
      
      public static const const_1596:String = "WE_UPDATED";
      
      public static const const_1413:String = "WE_UNFOCUSED";
      
      public static const const_392:String = "WE_RELOCATED";
      
      public static const const_1420:String = "WE_DEACTIVATE";
      
      public static const const_245:String = "WE_DISABLED";
      
      public static const const_616:String = "WE_CANCEL";
      
      public static const const_672:String = "WE_ENABLE";
      
      public static const const_1290:String = "WE_ACTIVATED";
      
      public static const const_1271:String = "WE_FOCUS";
      
      public static const const_1687:String = "WE_DETACH";
      
      public static const const_1416:String = "WE_RESTORED";
      
      public static const const_1406:String = "WE_UNFOCUS";
      
      public static const const_62:String = "WE_SELECTED";
      
      public static const const_1304:String = "WE_PARENT_RESIZED";
      
      public static const const_1349:String = "WE_CREATED";
      
      public static const const_1550:String = "WE_ATTACHED";
      
      public static const const_1186:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1711:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1476:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1711 = param3;
         var_1476 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1476;
      }
      
      public function get related() : IWindow
      {
         return var_1711;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1476 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
