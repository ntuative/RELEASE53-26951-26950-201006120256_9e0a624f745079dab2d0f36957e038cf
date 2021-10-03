package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1125:int = 80;
       
      
      private var var_547:Map;
      
      private var var_775:String = "";
      
      private var var_1393:Array;
      
      public function UserRegistry()
      {
         var_547 = new Map();
         var_1393 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_547.getValue(var_1393.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_775;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_547.getValue(param1) != null)
         {
            var_547.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_775);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_775 == "")
         {
            var_1393.push(param1);
         }
         var_547.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_547;
      }
      
      public function unregisterRoom() : void
      {
         var_775 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_547.length > const_1125)
         {
            _loc1_ = var_547.getKey(0);
            var_547.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_775 = param1;
         if(var_775 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
