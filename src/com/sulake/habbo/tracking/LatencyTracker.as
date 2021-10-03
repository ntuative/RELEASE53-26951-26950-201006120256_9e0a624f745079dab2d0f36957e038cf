package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.tracking.LatencyPingResponseMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingReportMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingRequestMessageComposer;
   import com.sulake.habbo.communication.messages.parser.tracking.LatencyPingResponseMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LatencyTracker
   {
       
      
      private var var_165:Array;
      
      private var var_35:Boolean = false;
      
      private var var_1673:int = 0;
      
      private var var_1671:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_555:Map;
      
      private var var_2303:int = 0;
      
      private var var_1674:int = 0;
      
      private var var_131:IHabboConfigurationManager;
      
      private var var_1422:int = 0;
      
      private var _connection:IConnection;
      
      private var var_1672:int = 0;
      
      public function LatencyTracker()
      {
         super();
      }
      
      public function update(param1:uint) : void
      {
         if(!var_35)
         {
            return;
         }
         if(getTimer() - var_1673 > var_1671)
         {
            testLatency();
         }
      }
      
      private function testLatency() : void
      {
         var_1673 = getTimer();
         var_555.add(var_1422,var_1673);
         _connection.send(new LatencyPingRequestMessageComposer(var_1422));
         ++var_1422;
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function init() : void
      {
         if(var_131 == null || _communication == null || _connection == null)
         {
            return;
         }
         var_1671 = int(var_131.getKey("latencytest.interval"));
         var_1672 = int(var_131.getKey("latencytest.report.index"));
         var_2303 = int(var_131.getKey("latencytest.report.delta"));
         _communication.addHabboConnectionMessageEvent(new LatencyPingResponseMessageEvent(onPingResponse));
         if(var_1671 < 1)
         {
            return;
         }
         var_555 = new Map();
         var_165 = new Array();
         var_35 = true;
      }
      
      private function onPingResponse(param1:IMessageEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         if(var_555 == null || var_165 == null)
         {
            return;
         }
         var _loc2_:LatencyPingResponseMessageParser = (param1 as LatencyPingResponseMessageEvent).getParser();
         var _loc3_:int = var_555.getValue(_loc2_.requestId);
         var_555.remove(_loc2_.requestId);
         var _loc4_:int = getTimer() - _loc3_;
         var_165.push(_loc4_);
         if(var_165.length == var_1672 && var_1672 > 0)
         {
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            _loc8_ = 0;
            while(_loc8_ < var_165.length)
            {
               _loc5_ += var_165[_loc8_];
               _loc8_++;
            }
            _loc9_ = _loc5_ / 0;
            _loc8_ = 0;
            while(_loc8_ < var_165.length)
            {
               if(var_165[_loc8_] < _loc9_ * 2)
               {
                  _loc6_ += var_165[_loc8_];
                  _loc7_++;
               }
               _loc8_++;
            }
            if(_loc7_ == 0)
            {
               var_165 = [];
               return;
            }
            _loc10_ = _loc6_ / _loc7_;
            if(Math.abs(_loc9_ - var_1674) > var_2303 || var_1674 == 0)
            {
               var_1674 = _loc9_;
               _loc11_ = new LatencyPingReportMessageComposer(_loc9_,_loc10_,var_165.length);
               _connection.send(_loc11_);
            }
            var_165 = [];
         }
      }
      
      public function dispose() : void
      {
         var_35 = false;
         var_131 = null;
         _communication = null;
         _connection = null;
         if(var_555 != null)
         {
            var_555.dispose();
            var_555 = null;
         }
         var_165 = null;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_131 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
