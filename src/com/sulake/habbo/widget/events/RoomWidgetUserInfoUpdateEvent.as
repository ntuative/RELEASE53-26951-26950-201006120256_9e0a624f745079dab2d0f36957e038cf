package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_206:String = "RWUIUE_PEER";
      
      public static const const_216:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1320:String = "BOT";
      
      public static const const_880:int = 2;
      
      public static const const_1292:int = 0;
      
      public static const const_857:int = 3;
       
      
      private var var_454:String = "";
      
      private var var_1282:String = "";
      
      private var var_2364:Boolean = false;
      
      private var var_1961:int = 0;
      
      private var var_1986:int = 0;
      
      private var var_2359:Boolean = false;
      
      private var var_1283:String = "";
      
      private var var_2363:Boolean = false;
      
      private var var_968:int = 0;
      
      private var var_2367:Boolean = true;
      
      private var var_1157:int = 0;
      
      private var var_2362:Boolean = false;
      
      private var var_1271:Boolean = false;
      
      private var var_2361:Boolean = false;
      
      private var var_1985:int = 0;
      
      private var var_2360:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_263:Array;
      
      private var var_1269:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1966:int = 0;
      
      private var var_2366:Boolean = false;
      
      private var var_2365:int = 0;
      
      private var var_1984:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_263 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1986;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1986 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2364;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2367;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2367 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2363 = param1;
      }
      
      public function get motto() : String
      {
         return var_1282;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2362 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1271;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1282 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2366;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1984;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1271 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2360;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1985 = param1;
      }
      
      public function get badges() : Array
      {
         return var_263;
      }
      
      public function get amIController() : Boolean
      {
         return var_2359;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2359 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2366 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2365 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1984 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1283 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2363;
      }
      
      public function set figure(param1:String) : void
      {
         var_454 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1985;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1269;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2362;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_968 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2365;
      }
      
      public function get realName() : String
      {
         return var_1283;
      }
      
      public function get figure() : String
      {
         return var_454;
      }
      
      public function set webID(param1:int) : void
      {
         var_1966 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_263 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2361 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2360 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_968;
      }
      
      public function get webID() : int
      {
         return var_1966;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1157 = param1;
      }
      
      public function get xp() : int
      {
         return var_1961;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2364 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1157;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2361;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1269 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1961 = param1;
      }
   }
}
