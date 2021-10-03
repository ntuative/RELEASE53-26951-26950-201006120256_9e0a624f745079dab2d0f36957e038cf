package com.sulake.habbo.avatar.cache
{
   import com.sulake.core.utils.Map;
   import flash.utils.getTimer;
   
   public class AvatarImageActionCache
   {
       
      
      private var var_2287:int;
      
      private var var_128:Map;
      
      public function AvatarImageActionCache()
      {
         super();
         var_128 = new Map();
         setLastAccessTime(getTimer());
      }
      
      public function setLastAccessTime(param1:int) : void
      {
         var_2287 = param1;
      }
      
      private function debugInfo(param1:String) : void
      {
      }
      
      public function getLastAccessTime() : int
      {
         return var_2287;
      }
      
      public function getDirectionCache(param1:int) : AvatarImageDirectionCache
      {
         var _loc2_:String = param1.toString();
         return var_128.getValue(_loc2_) as AvatarImageDirectionCache;
      }
      
      public function updateDirectionCache(param1:int, param2:AvatarImageDirectionCache) : void
      {
         var _loc3_:String = param1.toString();
         var_128.add(_loc3_,param2);
      }
      
      public function dispose() : void
      {
         debugInfo("[dispose]");
         if(var_128 == null)
         {
            return;
         }
         var_128.dispose();
      }
   }
}
