package com.sulake.habbo.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_137:String = "RWPUW_CONTENT";
      
      public static const const_124:String = "RWPUW_OFFER";
      
      public static const const_67:String = "RWPUW_ERROR";
       
      
      private var var_1070:Array = null;
      
      private var var_1285:String = "";
      
      private var var_1346:String;
      
      private var var_1286:String = "";
      
      private var var_1071:int = 0;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         _id = param1;
         super(param2,param3,param4);
      }
      
      public function get questionArray() : Array
      {
         return var_1070;
      }
      
      public function get startMessage() : String
      {
         return var_1285;
      }
      
      public function get summary() : String
      {
         return var_1346;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1285 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1071 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1346 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1071;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1286 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1286;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1070 = param1;
      }
   }
}
