package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.userdefinedroomevents.GetEventsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.navigator.userdefinedroomevents.UserDefinedRoomEventsCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_733:IWindowContainer;
      
      private var var_1075:ITextWindow;
      
      private var var_178:RoomSettingsCtrl;
      
      private var var_1302:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var var_200:Timer;
      
      private var var_1948:IWindowContainer;
      
      private var var_1300:ITextWindow;
      
      private var var_361:IWindowContainer;
      
      private var var_1947:ITextWindow;
      
      private var var_893:IWindowContainer;
      
      private var var_199:UserDefinedRoomEventsCtrl;
      
      private var var_1566:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_775:ITextWindow;
      
      private var var_1563:IWindowContainer;
      
      private var var_1304:IWindowContainer;
      
      private var var_891:ITextWindow;
      
      private var var_1077:ITextFieldWindow;
      
      private var var_270:IWindowContainer;
      
      private var var_892:ITextWindow;
      
      private var var_1565:IButtonWindow;
      
      private var var_1076:ITextWindow;
      
      private var var_2432:int;
      
      private var var_1303:IContainerButtonWindow;
      
      private var var_890:IWindowContainer;
      
      private var var_1305:ITextWindow;
      
      private var var_1299:IContainerButtonWindow;
      
      private var var_1567:ITextWindow;
      
      private var var_938:TagRenderer;
      
      private var var_1564:IButtonWindow;
      
      private var var_1945:ITextWindow;
      
      private var var_310:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_734:ITextWindow;
      
      private var var_235:RoomThumbnailCtrl;
      
      private var var_1301:IContainerButtonWindow;
      
      private var var_1946:IWindowContainer;
      
      private var var_269:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_310 = new RoomEventViewCtrl(_navigator);
         var_178 = new RoomSettingsCtrl(_navigator,this,true);
         var_235 = new RoomThumbnailCtrl(_navigator);
         var_199 = new UserDefinedRoomEventsCtrl(_navigator);
         var_938 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_178);
         var_200 = new Timer(6000,1);
         var_200.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_178.active = true;
         this.var_310.active = false;
         this.var_235.active = false;
         this.var_199.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1566.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1564.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1563.visible = Util.hasVisibleChildren(var_1563);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false || false)
         {
            return;
         }
         var_775.text = param1.roomName;
         var_775.height = NaN;
         _ownerName.text = param1.ownerName;
         var_891.text = param1.description;
         var_938.refreshTags(var_361,param1.tags);
         var_891.visible = false;
         if(param1.description != "")
         {
            var_891.height = NaN;
            var_891.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_361,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_361,"thumb_down",_loc3_,onThumbDown,0);
         var_1947.visible = _loc3_;
         var_892.visible = !_loc3_;
         var_1567.visible = !_loc3_;
         var_1567.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_361,"home",param2,null,0);
         _navigator.refreshButton(var_361,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_361,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_775.y,0);
         var_361.visible = true;
         var_361.height = Util.getLowestPoint(var_361);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function startUserDefinedRoomEventsEdit() : void
      {
         this.var_200.reset();
         this.var_178.active = false;
         this.var_310.active = false;
         this.var_235.active = false;
         this.var_199.active = true;
         _navigator.send(new GetEventsMessageComposer());
      }
      
      public function dispose() : void
      {
         if(var_200)
         {
            var_200.removeEventListener(TimerEvent.TIMER,hideInfo);
            var_200.reset();
            var_200 = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_440,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false || false)
         {
            return;
         }
         var_1565.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1302.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1301.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1303.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1299.visible = _navigator.data.canEditRoomSettings && param1;
         var_1304.visible = Util.hasVisibleChildren(var_1304);
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_200.reset();
         this.var_310.active = false;
         this.var_178.active = false;
         this.var_235.active = false;
         this.var_199.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_51,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this.var_200.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_200.reset();
         this.var_310.active = false;
         this.var_178.active = false;
         this.var_235.active = false;
         this.var_199.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_51,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_440,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_270);
         var_270.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == _navigator.data.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_178.refresh(var_270);
         this.var_235.refresh(var_270);
         this.var_199.refresh(var_270);
         Util.moveChildrenToColumn(var_270,["room_details","room_buttons"],0,2);
         var_270.height = Util.getLowestPoint(var_270);
         var_270.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1077.setSelection(0,var_1077.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_269);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_310.refresh(var_269);
         if(Util.hasVisibleChildren(var_269) && !(this.var_235.active || this.var_199.active))
         {
            Util.moveChildrenToColumn(var_269,["event_details","event_buttons"],0,2);
            var_269.height = Util.getLowestPoint(var_269);
            var_269.visible = true;
         }
         else
         {
            var_269.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this.var_200.reset();
         this.var_310.active = true;
         this.var_178.active = false;
         this.var_235.active = false;
         this.var_199.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         var_200.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false || false)
         {
            return;
         }
         var_1075.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1075.height = NaN;
         var_1300.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1300.height = NaN;
         Util.moveChildrenToColumn(var_733,["public_space_name","public_space_desc"],var_1075.y,0);
         var_733.visible = true;
         var_733.height = Math.max(86,Util.getLowestPoint(var_733));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function get userDefinedRoomEventsCtrl() : UserDefinedRoomEventsCtrl
      {
         return var_199;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true && true)
         {
            var_890.visible = true;
            var_1077.text = this.getEmbedData();
         }
         else
         {
            var_890.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_200.reset();
         this.var_178.load(param1);
         this.var_178.active = true;
         this.var_310.active = false;
         this.var_235.active = false;
         this.var_199.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_200.reset();
         this.var_178.active = false;
         this.var_310.active = false;
         this.var_235.active = true;
         this.var_199.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_70,false);
         _window.setParamFlag(HabboWindowParam.const_1246,true);
         _window.visible = false;
         var_270 = IWindowContainer(find("room_info"));
         var_361 = IWindowContainer(find("room_details"));
         var_733 = IWindowContainer(find("public_space_details"));
         var_1946 = IWindowContainer(find("owner_name_cont"));
         var_1948 = IWindowContainer(find("rating_cont"));
         var_1304 = IWindowContainer(find("room_buttons"));
         var_775 = ITextWindow(find("room_name"));
         var_1075 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_891 = ITextWindow(find("room_desc"));
         var_1300 = ITextWindow(find("public_space_desc"));
         var_1076 = ITextWindow(find("owner_caption"));
         var_892 = ITextWindow(find("rating_caption"));
         var_1947 = ITextWindow(find("rate_caption"));
         var_1567 = ITextWindow(find("rating_txt"));
         var_269 = IWindowContainer(find("event_info"));
         var_893 = IWindowContainer(find("event_details"));
         var_1563 = IWindowContainer(find("event_buttons"));
         var_1945 = ITextWindow(find("event_name"));
         var_734 = ITextWindow(find("event_desc"));
         var_1302 = IContainerButtonWindow(find("add_favourite_button"));
         var_1301 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1303 = IContainerButtonWindow(find("make_home_button"));
         var_1299 = IContainerButtonWindow(find("unmake_home_button"));
         var_1565 = IButtonWindow(find("room_settings_button"));
         var_1566 = IButtonWindow(find("create_event_button"));
         var_1564 = IButtonWindow(find("edit_event_button"));
         var_890 = IWindowContainer(find("embed_info"));
         var_1305 = ITextWindow(find("embed_info_txt"));
         var_1077 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1302,onAddFavouriteClick);
         Util.setProcDirectly(var_1301,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1565,onRoomSettingsClick);
         Util.setProcDirectly(var_1303,onMakeHomeClick);
         Util.setProcDirectly(var_1299,onUnmakeHomeClick);
         Util.setProcDirectly(var_1566,onEventSettingsClick);
         Util.setProcDirectly(var_1564,onEventSettingsClick);
         Util.setProcDirectly(var_1077,onEmbedSrcClick);
         _navigator.refreshButton(var_1302,"favourite",true,null,0);
         _navigator.refreshButton(var_1301,"favourite",true,null,0);
         _navigator.refreshButton(var_1303,"home",true,null,0);
         _navigator.refreshButton(var_1299,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_270,onHover);
         Util.setProcDirectly(var_269,onHover);
         var_1076.width = var_1076.textWidth;
         Util.moveChildrenToRow(var_1946,["owner_caption","owner_name"],var_1076.x,var_1076.y,3);
         var_892.width = var_892.textWidth;
         Util.moveChildrenToRow(var_1948,["rating_caption","rating_txt"],var_892.x,var_892.y,3);
         var_1305.height = NaN;
         Util.moveChildrenToColumn(var_890,["embed_info_txt","embed_src_txt"],var_1305.y,2);
         var_890.height = Util.getLowestPoint(var_890) + 5;
         var_2432 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1945.text = param1.eventName;
         var_734.text = param1.eventDescription;
         var_938.refreshTags(var_893,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_734.visible = false;
         if(param1.eventDescription != "")
         {
            var_734.height = NaN;
            var_734.y = Util.getLowestPoint(var_893) + 2;
            var_734.visible = true;
         }
         var_893.visible = true;
         var_893.height = Util.getLowestPoint(var_893);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_878,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
