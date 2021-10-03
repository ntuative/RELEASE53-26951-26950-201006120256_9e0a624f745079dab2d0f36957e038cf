package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1401:int;
      
      private var var_1500:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1401 = param1;
         var_1500 = param2;
         Logger.log("READ NODE: " + var_1401 + ", " + var_1500);
      }
      
      public function get nodeName() : String
      {
         return var_1500;
      }
      
      public function get nodeId() : int
      {
         return var_1401;
      }
   }
}
