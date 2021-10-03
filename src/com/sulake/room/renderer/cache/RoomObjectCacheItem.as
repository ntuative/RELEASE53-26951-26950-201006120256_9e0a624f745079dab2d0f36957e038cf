package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_654:RoomObjectLocationCacheItem = null;
      
      private var var_188:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_654 = new RoomObjectLocationCacheItem(param1);
         var_188 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_654;
      }
      
      public function dispose() : void
      {
         if(var_654 != null)
         {
            var_654.dispose();
            var_654 = null;
         }
         if(var_188 != null)
         {
            var_188.dispose();
            var_188 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_188;
      }
   }
}
