package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_459:int = 0;
      
      public static const const_122:int = 2;
      
      public static const const_187:int = 1;
      
      public static const const_761:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_2278:Boolean;
      
      private var var_2274:Boolean;
      
      private var var_2315:int;
      
      private var var_2277:Array;
      
      private var var_2316:int;
      
      private var var_2127:Boolean;
      
      private var var_1369:String;
      
      private var var_2276:int;
      
      private var var_2275:Boolean;
      
      private var var_1955:int;
      
      private var var_1280:int;
      
      private var _roomId:int;
      
      private var var_688:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_2276;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2276 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         var_2275 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_688;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2127;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2316 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2277 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_688 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2278;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2274;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2315;
      }
      
      public function get categoryId() : int
      {
         return var_1280;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_2127 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return var_2275;
      }
      
      public function get controllerCount() : int
      {
         return var_2316;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2277;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1955 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2278 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2274 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2315 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1955;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1280 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1369 = param1;
      }
      
      public function get description() : String
      {
         return var_1369;
      }
   }
}
