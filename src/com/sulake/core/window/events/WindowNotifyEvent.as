package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1300:String = "WN_CREATED";
      
      public static const const_1014:String = "WN_DISABLE";
      
      public static const const_945:String = "WN_DEACTIVATED";
      
      public static const const_890:String = "WN_OPENED";
      
      public static const const_879:String = "WN_CLOSED";
      
      public static const const_968:String = "WN_DESTROY";
      
      public static const const_1650:String = "WN_ARRANGED";
      
      public static const const_378:String = "WN_PARENT_RESIZED";
      
      public static const const_872:String = "WN_ENABLE";
      
      public static const const_1050:String = "WN_RELOCATE";
      
      public static const const_831:String = "WN_FOCUS";
      
      public static const const_1046:String = "WN_PARENT_RELOCATED";
      
      public static const const_494:String = "WN_PARAM_UPDATED";
      
      public static const const_615:String = "WN_PARENT_ACTIVATED";
      
      public static const const_159:String = "WN_RESIZED";
      
      public static const const_866:String = "WN_CLOSE";
      
      public static const const_849:String = "WN_PARENT_REMOVED";
      
      public static const const_264:String = "WN_CHILD_RELOCATED";
      
      public static const const_606:String = "WN_ENABLED";
      
      public static const const_252:String = "WN_CHILD_RESIZED";
      
      public static const const_1025:String = "WN_MINIMIZED";
      
      public static const const_588:String = "WN_DISABLED";
      
      public static const const_247:String = "WN_CHILD_ACTIVATED";
      
      public static const const_450:String = "WN_STATE_UPDATED";
      
      public static const const_591:String = "WN_UNSELECTED";
      
      public static const const_503:String = "WN_STYLE_UPDATED";
      
      public static const const_1505:String = "WN_UPDATE";
      
      public static const const_416:String = "WN_PARENT_ADDED";
      
      public static const const_742:String = "WN_RESIZE";
      
      public static const const_710:String = "WN_CHILD_REMOVED";
      
      public static const const_1707:String = "";
      
      public static const const_1008:String = "WN_RESTORED";
      
      public static const const_345:String = "WN_SELECTED";
      
      public static const const_903:String = "WN_MINIMIZE";
      
      public static const const_987:String = "WN_FOCUSED";
      
      public static const const_1248:String = "WN_LOCK";
      
      public static const const_354:String = "WN_CHILD_ADDED";
      
      public static const const_989:String = "WN_UNFOCUSED";
      
      public static const const_509:String = "WN_RELOCATED";
      
      public static const const_1047:String = "WN_DEACTIVATE";
      
      public static const const_1347:String = "WN_CRETAE";
      
      public static const const_885:String = "WN_RESTORE";
      
      public static const const_349:String = "WN_ACTVATED";
      
      public static const const_1390:String = "WN_LOCKED";
      
      public static const const_444:String = "WN_SELECT";
      
      public static const const_927:String = "WN_MAXIMIZE";
      
      public static const const_966:String = "WN_OPEN";
      
      public static const const_563:String = "WN_UNSELECT";
      
      public static const const_1654:String = "WN_ARRANGE";
      
      public static const const_1235:String = "WN_UNLOCKED";
      
      public static const const_1680:String = "WN_UPDATED";
      
      public static const const_874:String = "WN_ACTIVATE";
      
      public static const const_1261:String = "WN_UNLOCK";
      
      public static const const_829:String = "WN_MAXIMIZED";
      
      public static const const_976:String = "WN_DESTROYED";
      
      public static const const_961:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1711,cancelable);
      }
   }
}
