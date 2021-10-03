package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_139:String = "RWPUE_VOTE_RESULT";
      
      public static const const_140:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1423:int;
      
      private var var_1032:String;
      
      private var var_696:Array;
      
      private var var_1037:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1032 = param2;
         var_1037 = param3;
         var_696 = param4;
         if(var_696 == null)
         {
            var_696 = [];
         }
         var_1423 = param5;
      }
      
      public function get votes() : Array
      {
         return var_696.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1423;
      }
      
      public function get question() : String
      {
         return var_1032;
      }
      
      public function get choices() : Array
      {
         return var_1037.slice();
      }
   }
}
