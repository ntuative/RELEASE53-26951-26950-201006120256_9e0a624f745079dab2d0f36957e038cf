package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1585:GarbageMonitor = null;
      
      private var var_1311:int = 0;
      
      private var var_1366:Boolean = false;
      
      private var var_2029:String = "";
      
      private var var_1584:String = "";
      
      private var var_366:Number = 0;
      
      private var var_1343:int = 10;
      
      private var var_2441:Array;
      
      private var var_689:int = 0;
      
      private var var_1340:int = 60;
      
      private var var_1087:int = 0;
      
      private var var_1088:int = 0;
      
      private var var_2096:String = "";
      
      private var var_2032:Number = 0;
      
      private var var_1341:int = 1000;
      
      private var var_2031:Boolean = true;
      
      private var var_2028:Number = 0.15;
      
      private var var_131:IHabboConfigurationManager = null;
      
      private var var_2030:String = "";
      
      private var var_1342:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2441 = [];
         super();
         var_1584 = Capabilities.version;
         var_2029 = Capabilities.os;
         var_1366 = Capabilities.isDebugger;
         var_2030 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1585 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1311 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1585.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1585.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_366;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1340 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1584;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1088;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1341)
         {
            ++var_1087;
            _loc3_ = true;
         }
         else
         {
            ++var_689;
            if(var_689 <= 1)
            {
               var_366 = param1;
            }
            else
            {
               _loc4_ = Number(var_689);
               var_366 = var_366 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1311 > var_1340 * 1000 && var_1342 < var_1343)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_366);
            _loc5_ = true;
            if(var_2031 && var_1342 > 0)
            {
               _loc6_ = differenceInPercents(var_2032,var_366);
               if(_loc6_ < var_2028)
               {
                  _loc5_ = false;
               }
            }
            var_1311 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2032 = var_366;
               if(sendReport())
               {
                  ++var_1342;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1343 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1341 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_2030,var_1584,var_2029,var_2096,var_1366,_loc4_,_loc3_,var_1088,var_366,var_1087);
            _connection.send(_loc1_);
            var_1088 = 0;
            var_366 = 0;
            var_689 = 0;
            var_1087 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_131 = param1;
         var_1340 = int(var_131.getKey("performancetest.interval","60"));
         var_1341 = int(var_131.getKey("performancetest.slowupdatelimit","1000"));
         var_1343 = int(var_131.getKey("performancetest.reportlimit","10"));
         var_2028 = Number(var_131.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2031 = Boolean(int(var_131.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
