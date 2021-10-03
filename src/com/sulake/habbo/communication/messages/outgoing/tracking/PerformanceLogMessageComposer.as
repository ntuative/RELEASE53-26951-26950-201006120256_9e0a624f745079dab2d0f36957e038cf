package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1087:int = 0;
      
      private var var_1366:int = 0;
      
      private var var_2029:String = "";
      
      private var var_1088:int = 0;
      
      private var var_2096:String = "";
      
      private var var_2097:int = 0;
      
      private var var_1584:String = "";
      
      private var var_1798:int = 0;
      
      private var var_2094:int = 0;
      
      private var var_2030:String = "";
      
      private var var_2095:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1798 = param1;
         var_2030 = param2;
         var_1584 = param3;
         var_2029 = param4;
         var_2096 = param5;
         if(param6)
         {
            var_1366 = 1;
         }
         else
         {
            var_1366 = 0;
         }
         var_2097 = param7;
         var_2094 = param8;
         var_1088 = param9;
         var_2095 = param10;
         var_1087 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1798,var_2030,var_1584,var_2029,var_2096,var_1366,var_2097,var_2094,var_1088,var_2095,var_1087];
      }
      
      public function dispose() : void
      {
      }
   }
}
