package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.incoming.userdefinedroomevents.UserDefinedRoomEvents;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1462:int = 10;
       
      
      private var var_2144:Boolean;
      
      private var var_2142:int;
      
      private var var_1372:int;
      
      private var var_2145:Boolean;
      
      private var var_1112:Array;
      
      private var var_934:Dictionary;
      
      private var var_1111:Array;
      
      private var var_2456:int;
      
      private var var_2141:int;
      
      private var var_2139:UserDefinedRoomEvents;
      
      private var var_1611:int;
      
      private var var_2143:int;
      
      private var var_1832:int;
      
      private var var_647:PublicRoomShortData;
      
      private var var_437:RoomEventData;
      
      private var var_139:MsgWithRequestId;
      
      private var var_2140:Boolean;
      
      private var var_2138:Array;
      
      private var _navigator:HabboNavigator;
      
      private var var_2146:Boolean;
      
      private var var_207:GuestRoomData;
      
      private var var_762:Boolean;
      
      private var var_646:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1112 = new Array();
         var_1111 = new Array();
         var_934 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_139 != null && var_139 as PopularRoomTagsData != null;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2146;
      }
      
      public function startLoading() : void
      {
         this.var_762 = true;
      }
      
      public function get createdFlatId() : int
      {
         return var_2142;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2146 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_437 != null)
         {
            var_437.dispose();
         }
         var_437 = param1;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function get homeRoomId() : int
      {
         return var_1611;
      }
      
      public function get stuffStates() : Array
      {
         return var_2138;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_139 != null && var_139 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_139 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_207;
      }
      
      public function get allCategories() : Array
      {
         return var_1112;
      }
      
      public function onRoomExit() : void
      {
         if(var_437 != null)
         {
            var_437.dispose();
            var_437 = null;
         }
         if(var_647 != null)
         {
            var_647.dispose();
            var_647 = null;
         }
         if(var_207 != null)
         {
            var_207.dispose();
            var_207 = null;
         }
         var_646 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_139 = param1;
         var_762 = false;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_207 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1611 == _loc1_;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_139 = param1;
         var_762 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_647 = null;
         var_207 = null;
         var_646 = false;
         if(param1.guestRoom)
         {
            var_646 = param1.owner;
         }
         else
         {
            var_647 = param1.publicSpace;
            var_437 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return var_646;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2456 = param1.limit;
         this.var_1372 = param1.favouriteRoomIds.length;
         this.var_934 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_934[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_139 as PopularRoomTagsData;
      }
      
      public function get settingsReceived() : Boolean
      {
         return var_2144;
      }
      
      public function set stuffStates(param1:Array) : void
      {
         var_2138 = param1;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_647;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_139 = param1;
         var_762 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1832 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_207 != null && var_646;
      }
      
      public function get userDefinedRoomEvents() : UserDefinedRoomEvents
      {
         return var_2139;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2145;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1112 = param1;
         var_1111 = new Array();
         for each(_loc2_ in var_1112)
         {
            if(_loc2_.visible)
            {
               var_1111.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_2141;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2143;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1111;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_139 == null)
         {
            return;
         }
         var_139.dispose();
         var_139 = null;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         var_2144 = param1;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_437;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_934[param1] = !!param2 ? "yes" : null;
         var_1372 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_139 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1832;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_139 != null && var_139 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2145 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2141 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2140 = param1;
      }
      
      public function set userDefinedRoomEvents(param1:UserDefinedRoomEvents) : void
      {
         var_2139 = param1;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_762;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         var_1611 = param1;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1372 >= var_2456;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_207 != null)
         {
            var_207.dispose();
         }
         var_207 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2143 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2140;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_207 != null && !var_646;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2142 = param1;
      }
   }
}
