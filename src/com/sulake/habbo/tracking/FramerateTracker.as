package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class FramerateTracker
   {
       
      
      private var var_1311:int;
      
      private var var_366:Number;
      
      private var var_1569:int;
      
      private var var_896:int;
      
      private var var_1958:int;
      
      private var var_1957:Boolean;
      
      private var _reportIntervalMillis:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++var_896;
         var _loc3_:int = getTimer();
         if(var_896 == 1)
         {
            var_366 = param1;
            var_1311 = _loc3_;
         }
         else
         {
            _loc4_ = Number(var_896);
            var_366 = var_366 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(var_1957 && _loc3_ - var_1311 >= _reportIntervalMillis && var_1569 < var_1958)
         {
            _loc5_ = 1000 / var_366;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++var_1569;
            var_1311 = _loc3_;
            var_896 = 0;
         }
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         _reportIntervalMillis = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         var_1958 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         var_1957 = true;
      }
      
      public function dispose() : void
      {
      }
   }
}
