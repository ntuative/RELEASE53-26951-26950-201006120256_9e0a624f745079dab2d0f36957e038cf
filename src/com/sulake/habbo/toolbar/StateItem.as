package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1368:Boolean;
      
      private var var_1742:String;
      
      private var _frames:XMLList;
      
      private var var_1143:String = "-1";
      
      private var var_687:String;
      
      private var var_174:int = 120;
      
      private var var_1212:String = "-1";
      
      private var var_1211:String;
      
      private var var_1743:Boolean;
      
      private var var_1497:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1368 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_1743 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_174 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1211 = param1.@namebase;
         }
         else
         {
            var_1211 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_1143 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1212 = param1.@nextState;
         }
         else
         {
            var_1212 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1497 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_1742 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_687 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_1143 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_1743;
      }
      
      public function get defaultState() : String
      {
         return var_1497;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1497 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_1742;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_174;
      }
      
      public function get loop() : Boolean
      {
         return var_1368;
      }
      
      public function get nextState() : String
      {
         return var_1212;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_687;
      }
      
      public function get stateOver() : String
      {
         return var_1143;
      }
      
      public function get nameBase() : String
      {
         return var_1211;
      }
   }
}
