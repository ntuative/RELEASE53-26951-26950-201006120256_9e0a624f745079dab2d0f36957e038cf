package com.sulake.habbo.messenger
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.friendlist.SendMsgMessageComposer;
   import com.sulake.habbo.messenger.domain.Conversation;
   import com.sulake.habbo.messenger.domain.Message;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class MessengerView implements IDisposable
   {
       
      
      private var var_901:ConversationsTabView;
      
      private var _disposed:Boolean = false;
      
      private var var_125:HabboMessenger;
      
      private var var_1315:ConversationView;
      
      private var var_15:IFrameWindow;
      
      private var var_418:Timer;
      
      private var var_721:ITextFieldWindow;
      
      public function MessengerView(param1:HabboMessenger)
      {
         super();
         var_125 = param1;
         var_418 = new Timer(300,1);
         var_418.addEventListener(TimerEvent.TIMER,onResizeTimer);
      }
      
      public function addMsgToView(param1:Conversation, param2:Message) : void
      {
         if(var_15 == null)
         {
            return;
         }
         if(!param1.selected)
         {
            return;
         }
         var_1315.addMessage(param2);
      }
      
      private function onMessageInput(param1:Event) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = param1 as WindowKeyboardEvent;
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            sendMsg();
         }
         else
         {
            _loc4_ = 120;
            _loc5_ = "null";
            if(_loc5_.length > _loc4_)
            {
               var_721.text = _loc5_.substring(0,_loc4_);
            }
         }
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close window");
         var_15.visible = false;
      }
      
      private function onResizeTimer(param1:TimerEvent) : void
      {
         Logger.log("XXX RESIZE XXX");
         this.var_1315.afterResize();
         this.var_901.refresh();
      }
      
      private function sendMsg() : void
      {
         var _loc1_:String = "null";
         Logger.log("Send msg: " + _loc1_);
         if(_loc1_ == "")
         {
            Logger.log("No text...");
            return;
         }
         var _loc2_:Conversation = var_125.conversations.findSelectedConversation();
         if(_loc2_ == null)
         {
            Logger.log("No conversation...");
            return;
         }
         var_125.send(new SendMsgMessageComposer(_loc2_.id,_loc1_));
         var_721.text = "";
         var_125.conversations.addMessageAndUpdateView(new Message(Message.const_580,_loc2_.id,_loc1_,Util.getFormattedNow()));
      }
      
      public function refresh(param1:Boolean) : void
      {
         if(var_15 == null)
         {
            return;
         }
         var _loc2_:Conversation = var_125.conversations.findSelectedConversation();
         var_15.caption = _loc2_ == null ? "" : _loc2_.name;
         var_901.refresh();
         var_1315.refresh();
         if(var_125.conversations.openConversations.length < 1)
         {
            var_15.visible = false;
            var_125.setHabboToolbarIcon(false,false);
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            if(var_418)
            {
               var_418.stop();
               var_418.removeEventListener(TimerEvent.TIMER,onResizeTimer);
               var_418 = null;
            }
            var_125 = null;
            _disposed = true;
         }
      }
      
      public function openMessenger() : void
      {
         if(var_125.conversations.openConversations.length < 1)
         {
            return;
         }
         if(var_15 == null)
         {
            prepareContent();
            refresh(true);
            var_125.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_51,HabboToolbarIconEnum.MESSENGER,var_15));
         }
         else
         {
            refresh(true);
            var_15.visible = true;
            var_15.activate();
         }
      }
      
      public function getTabCount() : int
      {
         return this.var_901 == null ? 7 : int(this.var_901.getTabCount());
      }
      
      public function isMessengerOpen() : Boolean
      {
         return var_15 != null && false;
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_47 || param2 != var_15)
         {
            return;
         }
         if(!this.var_418.running)
         {
            this.var_418.reset();
            this.var_418.start();
         }
      }
      
      public function close() : void
      {
         if(var_15 != null)
         {
            var_15.visible = false;
         }
      }
      
      private function prepareContent() : void
      {
         var_15 = IFrameWindow(var_125.getXmlWindow("main_window"));
         var _loc1_:IWindow = var_15.findChildByTag("close");
         _loc1_.procedure = onWindowClose;
         var_15.procedure = onWindow;
         var_15.title.color = 4294623744;
         var_15.title.textColor = 4287851525;
         var_901 = new ConversationsTabView(var_125,var_15);
         var_901.refresh();
         var_721 = ITextFieldWindow(var_15.findChildByName("message_input"));
         var_721.addEventListener(WindowKeyboardEvent.const_151,onMessageInput);
         var_1315 = new ConversationView(var_125,var_15);
         var_15.scaler.setParamFlag(HabboWindowParam.const_727,false);
         var_15.scaler.setParamFlag(HabboWindowParam.const_938,true);
      }
   }
}
