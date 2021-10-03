package com.sulake.habbo.navigator.userdefinedroomevents
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.userdefinedroomevents.ActionDefinition;
   import com.sulake.habbo.communication.messages.incoming.userdefinedroomevents.TriggerDefinition;
   import com.sulake.habbo.communication.messages.incoming.userdefinedroomevents.UserDefinedRoomEvent;
   import com.sulake.habbo.communication.messages.outgoing.userdefinedroomevents.AddActionMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.userdefinedroomevents.AddEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.userdefinedroomevents.AddTriggerMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.userdefinedroomevents.ReloadEventsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.userdefinedroomevents.RemoveActionMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.userdefinedroomevents.RemoveEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.userdefinedroomevents.RemoveTriggerMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.userdefinedroomevents.actiontypes.ActionType;
   import com.sulake.habbo.navigator.userdefinedroomevents.actiontypes.ActionTypes;
   import com.sulake.habbo.navigator.userdefinedroomevents.triggerconfs.TriggerConf;
   import com.sulake.habbo.navigator.userdefinedroomevents.triggerconfs.TriggerConfs;
   
   public class UserDefinedRoomEventsCtrl
   {
      
      private static var var_1688:int = 16;
       
      
      private var var_89:int = 1;
      
      private const const_374:int = 1;
      
      private const const_820:int = 4;
      
      private var var_571:IWindowContainer;
      
      private var _window:IWindowContainer;
      
      private const const_1168:int = 3;
      
      private var var_2343:IButtonWindow;
      
      private var var_811:int;
      
      private var var_2342:IButtonWindow;
      
      private var var_1169:ActionTypes;
      
      private var _active:Boolean;
      
      private var var_1450:String;
      
      private var var_572:IWindowContainer;
      
      private var var_2344:IButtonWindow;
      
      private var var_1168:IWindowContainer;
      
      private var var_218:ActionType;
      
      private var var_570:IWindowContainer;
      
      private var var_812:IWindowContainer;
      
      private var var_217:TriggerConf;
      
      private const const_1476:int = 2;
      
      private var var_810:IWindowContainer;
      
      private var _navigator:HabboNavigator;
      
      private const const_1477:int = 6;
      
      private var var_1170:TriggerConfs;
      
      private var var_1278:IWindowContainer;
      
      private const const_821:int = 7;
      
      private var var_336:int;
      
      private const const_1475:int = 5;
      
      public function UserDefinedRoomEventsCtrl(param1:HabboNavigator)
      {
         var_1170 = new TriggerConfs();
         super();
         _navigator = param1;
         var_1169 = new ActionTypes(param1);
      }
      
      private function refreshAction(param1:IWindowContainer, param2:int, param3:ActionDefinition) : void
      {
         var _loc4_:IWindowContainer = IWindowContainer(param1.getChildByName("" + param2));
         if(_loc4_ == null)
         {
            _loc4_ = IWindowContainer(_navigator.getXmlWindow("ude_action"));
            _loc4_.name = "" + param2;
            _loc4_.id = param2;
            param1.addChild(_loc4_);
            _navigator.refreshButton(_loc4_,"remove_bitmap",true,onRemoveActionButton,0,"ude_remove");
         }
         _loc4_.visible = true;
         refreshActionDesc(_loc4_,param3);
         _loc4_.y = param2 * var_1688;
      }
      
      private function isStuffSelectionMode() : Boolean
      {
         return this.var_89 == const_1168 || this.var_89 == const_1477;
      }
      
      private function onRemoveTriggerButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = param2.parent.id;
         var _loc4_:int = param2.parent.parent.parent.id;
         Logger.log("remove trigger clicked: " + _loc4_ + ", " + _loc3_);
         this._navigator.send(new RemoveTriggerMessageComposer(_loc4_,_loc3_));
      }
      
      public function set active(param1:Boolean) : void
      {
         this._active = param1;
         var_89 = const_374;
      }
      
      private function refreshSelectFurni() : void
      {
         if(!isStuffSelectionMode())
         {
            this.var_1168.visible = false;
            return;
         }
         this.var_1168.visible = true;
         var _loc1_:IWindow = this.var_1168.findChildByName("furni_name_txt");
         var _loc2_:IButtonWindow = IButtonWindow(this.var_1168.findChildByName("select_furni_button"));
         if(var_336 > 0)
         {
            _loc2_.enable();
            _loc1_.caption = var_1450 + " (" + var_336 + ")";
            _loc1_.visible = true;
         }
         else
         {
            _loc2_.disable();
            _loc1_.visible = false;
         }
      }
      
      private function onSelectFurni(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = param2.id;
         Logger.log("Select furni clicked: " + _loc3_);
         this.var_89 = var_89 == const_1168 ? int(const_820) : int(const_821);
         this.prepareForConfigure();
      }
      
      public function get active() : Boolean
      {
         return this._active;
      }
      
      private function reload() : void
      {
         this._navigator.roomInfoViewCtrl.reload();
      }
      
      private function onAddTrigger(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         addTrigger();
      }
      
      private function onAddAction(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         addAction();
      }
      
      private function refreshEvent(param1:int, param2:UserDefinedRoomEvent) : void
      {
         var _loc3_:IWindowContainer = IWindowContainer(var_572.getChildByName("" + param1));
         if(_loc3_ == null)
         {
            _loc3_ = IWindowContainer(_navigator.getXmlWindow("ude_event"));
            _loc3_.name = "" + param1;
            var_572.addChild(_loc3_);
            _navigator.refreshButton(_loc3_,"remove_event",true,onRemoveEventButton,0,"ude_remove");
            _navigator.refreshButton(_loc3_,"add_trigger",true,onAddTriggerButton,0,"ude_add_trigger");
            _navigator.refreshButton(_loc3_,"add_action",true,onAddActionButton,0,"ude_add_action");
         }
         _loc3_.id = param2.id;
         _loc3_.visible = true;
         refreshTriggers(_loc3_,param2);
         refreshActions(_loc3_,param2);
         Util.moveChildrenToColumn(_loc3_,["triggers_container","actions_container"],0,3);
         var _loc4_:IWindowContainer = IWindowContainer(_loc3_.getChildByName("ruler"));
         _loc4_.visible = false;
         _loc4_.y = Util.getLowestPoint(_loc3_) + 3;
         _loc4_.visible = true;
         _loc3_.height = Util.getLowestPoint(_loc3_) + 3;
      }
      
      private function refreshActions(param1:IWindowContainer, param2:UserDefinedRoomEvent) : void
      {
         var _loc3_:IWindowContainer = IWindowContainer(param1.getChildByName("actions_container"));
         Util.hideChildren(_loc3_);
         var _loc4_:Array = param2.actions;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.length)
         {
            refreshAction(_loc3_,_loc5_,_loc4_[_loc5_]);
            _loc5_++;
         }
         _loc3_.height = Util.getLowestPoint(_loc3_) + 1;
      }
      
      private function refreshTriggerDesc(param1:IWindowContainer, param2:TriggerDefinition) : void
      {
         var _loc3_:TriggerConf = var_1170.getByCode(param2.triggerConf);
         param1.findChildByName("desc_txt").caption = _loc3_.getDesc(param2);
      }
      
      private function onSelectActionType(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = param2.id;
         Logger.log("Select action type clicked: " + _loc3_);
         var_218 = this.var_1169.getByCode(_loc3_);
         Logger.log("Found action type: undefined, undefined, undefined");
         var_89 = !true ? int(const_1477) : int(const_821);
         this.prepareForConfigure();
      }
      
      private function refreshSelectActionType() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(var_89 != const_1475)
         {
            this.var_812.visible = false;
            return;
         }
         this.var_812.visible = true;
         var _loc1_:IWindowContainer = IWindowContainer(var_812.findChildByName("action_types_container"));
         if(_loc1_.numChildren < 1)
         {
            _loc3_ = 25;
            _loc4_ = 0;
            while(_loc4_ < this.var_1169.types.length)
            {
               _loc5_ = this.var_1169.types[_loc4_];
               _loc6_ = _navigator.getXmlWindow("ude_action_type");
               _loc1_.addChild(_loc6_);
               _loc6_.y = _loc4_ * _loc3_;
               _loc6_.id = _loc5_.code;
               _loc6_.procedure = onSelectActionType;
               _loc6_.caption = _loc5_.name;
               _loc4_++;
            }
         }
         _loc1_.height = Util.getLowestPoint(_loc1_);
         var _loc2_:int = _loc1_.height + _loc1_.y + 5;
         var_812.getChildByName("cancel_add_action_button").y = _loc2_;
         var_812.height = Util.getLowestPoint(var_812);
      }
      
      private function onReloadButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Reload clicked");
         _navigator.send(new ReloadEventsMessageComposer());
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
      
      public function stuffSelected(param1:int, param2:String) : void
      {
         if(!this._active)
         {
            return;
         }
         if(!isStuffSelectionMode())
         {
            return;
         }
         var_336 = param1;
         var_1450 = param2;
         reload();
      }
      
      private function onRemoveEventButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = param2.parent.id;
         Logger.log("remove event clicked: " + _loc3_);
         this._navigator.send(new RemoveEventMessageComposer(_loc3_));
      }
      
      private function prepareForConfigure() : void
      {
         if(var_89 == const_820 && true)
         {
            addTrigger();
         }
         else if(var_89 == const_821 && true)
         {
            addAction();
         }
         else
         {
            _navigator.data.stuffStates = null;
            this.reload();
         }
      }
      
      private function refreshTriggers(param1:IWindowContainer, param2:UserDefinedRoomEvent) : void
      {
         var _loc3_:IWindowContainer = IWindowContainer(param1.getChildByName("triggers_container"));
         Util.hideChildren(_loc3_);
         var _loc4_:Array = param2.triggers;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.length)
         {
            refreshTrigger(_loc3_,_loc5_,_loc4_[_loc5_]);
            _loc5_++;
         }
         _loc3_.height = Util.getLowestPoint(_loc3_) + 1;
      }
      
      private function addAction() : void
      {
         var _loc1_:IWindowContainer = IWindowContainer(var_571.findChildByName("custom_inputs_container"));
         var _loc2_:IWindowContainer = IWindowContainer(_loc1_.getChildByName("undefined"));
         var _loc3_:String = var_218.readParamsFromForm(_loc2_);
         this._navigator.send(new AddActionMessageComposer(var_811,var_218.code,var_336,var_336 > 0 ? var_1450 : "",_loc3_));
         this.var_89 = const_374;
      }
      
      private function onBackButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("cancel clicked");
         this._navigator.roomInfoViewCtrl.backToRoomSettings();
      }
      
      private function onSelectTriggerConf(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = param2.id;
         Logger.log("Select trigger conf clicked: " + _loc3_);
         var_217 = this.var_1170.getByCode(_loc3_);
         Logger.log("Found trigger conf: undefined, undefined, undefined");
         var_89 = !true ? int(const_1168) : int(const_820);
         this.prepareForConfigure();
      }
      
      private function getImgSelectorContainer(param1:int) : IWindowContainer
      {
         return IWindowContainer(_window.findChildByName("img_selector_container_" + param1));
      }
      
      private function prepareWindow(param1:IWindowContainer) : void
      {
         if(this._window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("ude_main"));
         param1.addChildAt(_window,0);
         var_2344 = IButtonWindow(find("add_event_button"));
         var_2342 = IButtonWindow(find("back_button"));
         var_2343 = IButtonWindow(find("reload_button"));
         var_572 = IWindowContainer(find("events_container"));
         var_810 = IWindowContainer(find("select_trigger_type_container"));
         var_570 = IWindowContainer(find("configure_trigger_container"));
         var_812 = IWindowContainer(find("select_action_type_container"));
         var_571 = IWindowContainer(find("configure_action_container"));
         var_1168 = IWindowContainer(find("select_furni_container"));
         var_1278 = IWindowContainer(find("footer_container"));
         Util.setProcDirectly(var_2344,onAddEventButton);
         Util.setProcDirectly(var_2342,onBackButton);
         Util.setProcDirectly(var_2343,onReloadButton);
         Util.setProcDirectly(find("cancel_add_trigger_button"),onBackToNormal);
         Util.setProcDirectly(find("cancel_add_action_button"),onBackToNormal);
         Util.setProcDirectly(find("cancel_save_trigger_button"),onBackToNormal);
         Util.setProcDirectly(find("save_trigger_button"),onAddTrigger);
         Util.setProcDirectly(find("cancel_save_action_button"),onBackToNormal);
         Util.setProcDirectly(find("save_action_button"),onAddAction);
         Util.setProcDirectly(find("cancel_select_furni_button"),onBackToNormal);
         Util.setProcDirectly(find("select_furni_button"),onSelectFurni);
      }
      
      private function onAddEventButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Add event clicked");
         _navigator.send(new AddEventMessageComposer());
      }
      
      public function refresh(param1:IWindowContainer) : void
      {
         if(!_active)
         {
            return;
         }
         prepareWindow(param1);
         refreshEvents();
         refreshSelectTriggerType();
         refreshConfigureTrigger();
         refreshSelectActionType();
         refreshConfigureAction();
         refreshSelectFurni();
         var_1278.visible = false;
         if(var_89 == const_374)
         {
            var_1278.y = Util.getLowestPoint(this._window);
            var_1278.visible = true;
         }
         _window.height = Util.getLowestPoint(this._window) + 4;
         _window.visible = true;
      }
      
      private function refreshConfigureAction() : void
      {
         var _loc3_:* = null;
         if(var_89 != const_821)
         {
            this.var_571.visible = false;
            return;
         }
         this.var_571.visible = true;
         var _loc1_:IWindowContainer = IWindowContainer(var_571.findChildByName("custom_inputs_container"));
         Util.hideChildren(_loc1_);
         if(false)
         {
            _loc3_ = IWindowContainer(_loc1_.getChildByName("undefined"));
            if(_loc3_ == null)
            {
               _loc3_ = IWindowContainer(_navigator.getXmlWindow("ude_action_inputs_undefined"));
               _loc3_.name = "undefined";
               _loc1_.addChild(_loc3_);
               var_218.onInit(_loc3_);
            }
            var_218.onEditStart(_loc3_,var_336);
            _loc3_.visible = true;
         }
         _loc1_.height = Util.getLowestPoint(_loc1_);
         var _loc2_:int = _loc1_.height + _loc1_.y;
         var_571.getChildByName("save_action_button").y = _loc2_;
         var_571.getChildByName("cancel_save_action_button").y = _loc2_;
         var_571.height = Util.getLowestPoint(var_571) + 1;
      }
      
      private function refreshSelectTriggerType() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(var_89 != const_1476)
         {
            this.var_810.visible = false;
            return;
         }
         this.var_810.visible = true;
         var _loc1_:IWindowContainer = IWindowContainer(var_810.findChildByName("trigger_types_container"));
         if(_loc1_.numChildren < 1)
         {
            _loc3_ = 25;
            _loc4_ = 0;
            while(_loc4_ < this.var_1170.confs.length)
            {
               _loc5_ = this.var_1170.confs[_loc4_];
               _loc6_ = _navigator.getXmlWindow("ude_trigger_conf");
               _loc1_.addChild(_loc6_);
               _loc6_.y = _loc4_ * _loc3_;
               _loc6_.id = _loc5_.code;
               _loc6_.procedure = onSelectTriggerConf;
               _loc6_.caption = _loc5_.name;
               _loc4_++;
            }
         }
         _loc1_.height = Util.getLowestPoint(_loc1_);
         var _loc2_:int = _loc1_.height + _loc1_.y + 5;
         var_810.getChildByName("cancel_add_trigger_button").y = _loc2_;
         var_810.height = Util.getLowestPoint(var_810);
      }
      
      private function refreshEvents() : void
      {
         if(var_89 != const_374)
         {
            var_572.visible = false;
            return;
         }
         var_572.visible = true;
         Util.hideChildren(this.var_572);
         var _loc1_:Array = _navigator.data.userDefinedRoomEvents.events;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            refreshEvent(_loc2_,_loc1_[_loc2_]);
            _loc2_++;
         }
         Util.moveAllChildrenToColumn(this.var_572,0,0);
         this.var_572.height = Util.getLowestPoint(this.var_572);
      }
      
      private function refreshTrigger(param1:IWindowContainer, param2:int, param3:TriggerDefinition) : void
      {
         var _loc4_:IWindowContainer = IWindowContainer(param1.getChildByName("" + param2));
         if(_loc4_ == null)
         {
            _loc4_ = IWindowContainer(_navigator.getXmlWindow("ude_trigger"));
            _loc4_.name = "" + param2;
            _loc4_.id = param2;
            param1.addChild(_loc4_);
            _navigator.refreshButton(_loc4_,"remove_bitmap",true,onRemoveTriggerButton,0,"ude_remove");
         }
         _loc4_.visible = true;
         refreshTriggerDesc(_loc4_,param3);
         _loc4_.y = param2 * var_1688;
      }
      
      private function addTrigger() : void
      {
         var _loc1_:IWindowContainer = IWindowContainer(var_570.findChildByName("custom_inputs_container"));
         var _loc2_:IWindowContainer = IWindowContainer(_loc1_.getChildByName("undefined"));
         var _loc3_:String = var_217.readParamsFromForm(_loc2_);
         this._navigator.send(new AddTriggerMessageComposer(var_811,var_217.code,var_336,var_336 > 0 ? var_1450 : "",_loc3_));
         this.var_89 = const_374;
      }
      
      private function onAddTriggerButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_336 = 0;
         var_811 = param2.parent.id;
         Logger.log("add trigger clicked: " + var_811);
         this.var_89 = const_1476;
         this.reload();
      }
      
      private function onBackToNormal(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Reload clicked");
         var_89 = const_374;
         reload();
      }
      
      private function refreshConfigureTrigger() : void
      {
         var _loc3_:* = null;
         if(var_89 != const_820)
         {
            this.var_570.visible = false;
            return;
         }
         this.var_570.visible = true;
         var _loc1_:IWindowContainer = IWindowContainer(var_570.findChildByName("custom_inputs_container"));
         Util.hideChildren(_loc1_);
         if(false)
         {
            _loc3_ = IWindowContainer(_loc1_.getChildByName("undefined"));
            if(_loc3_ == null)
            {
               _loc3_ = IWindowContainer(_navigator.getXmlWindow("ude_trigger_inputs_undefined"));
               _loc3_.name = "undefined";
               _loc1_.addChild(_loc3_);
               var_217.onInit(_loc3_);
            }
            var_217.onEditStart(_loc3_);
            _loc3_.visible = true;
         }
         _loc1_.height = Util.getLowestPoint(_loc1_);
         var _loc2_:int = _loc1_.height + _loc1_.y;
         var_570.getChildByName("save_trigger_button").y = _loc2_;
         var_570.getChildByName("cancel_save_trigger_button").y = _loc2_;
         var_570.height = Util.getLowestPoint(var_570) + 1;
      }
      
      private function onAddActionButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_336 = 0;
         var_811 = param2.parent.id;
         Logger.log("add action clicked: " + var_811);
         this.var_89 = const_1475;
         this.reload();
      }
      
      private function onRemoveActionButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = param2.parent.id;
         var _loc4_:int = param2.parent.parent.parent.id;
         Logger.log("remove action clicked: " + _loc4_ + ", " + _loc3_);
         this._navigator.send(new RemoveActionMessageComposer(_loc4_,_loc3_));
      }
      
      private function refreshActionDesc(param1:IWindowContainer, param2:ActionDefinition) : void
      {
         var _loc3_:ActionType = var_1169.getByCode(param2.type);
         param1.findChildByName("desc_txt").caption = _loc3_.getDesc(param2);
      }
      
      public function close() : void
      {
         this._active = false;
      }
   }
}
