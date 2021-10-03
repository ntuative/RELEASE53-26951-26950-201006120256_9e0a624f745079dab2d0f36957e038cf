package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_154:int = 1;
      
      public static const const_1189:int = 3;
      
      public static const const_495:int = 2;
       
      
      private var var_2154:int;
      
      private var var_2148:int;
      
      private var var_2151:int;
      
      private var var_2132:int;
      
      private var var_35:int;
      
      private var var_415:int;
      
      private var var_1232:int;
      
      private var var_2014:int;
      
      private var var_1074:int;
      
      private var _roomResources:String;
      
      private var var_1886:int;
      
      private var var_2149:int;
      
      private var var_2155:String;
      
      private var var_2152:String;
      
      private var var_2153:int = 0;
      
      private var var_1293:String;
      
      private var _message:String;
      
      private var var_2106:int;
      
      private var var_2150:String;
      
      private var var_1280:int;
      
      private var var_775:String;
      
      private var var_2147:String;
      
      private var var_1592:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1074 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2153 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2149;
      }
      
      public function set roomName(param1:String) : void
      {
         var_775 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1886 = param1;
      }
      
      public function get state() : int
      {
         return var_35;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_775;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_2132 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_35 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_2148;
      }
      
      public function get priority() : int
      {
         return var_2154 + var_2153;
      }
      
      public function set issueId(param1:int) : void
      {
         var_2014 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2152;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1592) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1280;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2149 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1232;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2155 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1886;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_2132;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2147 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1293 = param1;
      }
      
      public function get issueId() : int
      {
         return var_2014;
      }
      
      public function set priority(param1:int) : void
      {
         var_2154 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_2148 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2155;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2151 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2152 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_2106 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1293;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1232 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2151;
      }
      
      public function set flatId(param1:int) : void
      {
         var_415 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1280 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1592 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_2106;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2150 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1592;
      }
      
      public function get reportedUserId() : int
      {
         return var_1074;
      }
      
      public function get flatId() : int
      {
         return var_415;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2147;
      }
      
      public function get reporterUserName() : String
      {
         return var_2150;
      }
   }
}
