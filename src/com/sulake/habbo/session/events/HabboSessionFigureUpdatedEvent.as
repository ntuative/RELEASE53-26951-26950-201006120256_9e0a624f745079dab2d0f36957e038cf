package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class HabboSessionFigureUpdatedEvent extends Event
   {
      
      public static const const_610:String = "HABBO_SESSION_FIGURE_UPDATE";
       
      
      private var var_671:String;
      
      private var var_454:String;
      
      private var _userId:int;
      
      public function HabboSessionFigureUpdatedEvent(param1:int, param2:String, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(const_610,param4,param5);
         _userId = param1;
         var_454 = param2;
         var_671 = param3;
      }
      
      public function get gender() : String
      {
         return var_671;
      }
      
      public function get figure() : String
      {
         return var_454;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
