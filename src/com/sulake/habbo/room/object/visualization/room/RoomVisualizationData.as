package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_399:FloorRasterizer;
      
      private var var_909:Boolean = false;
      
      private var var_587:PlaneMaskManager;
      
      private var var_398:WallRasterizer;
      
      private var var_586:WallAdRasterizer;
      
      private var var_397:LandscapeRasterizer;
      
      public function RoomVisualizationData()
      {
         super();
         var_398 = new WallRasterizer();
         var_399 = new FloorRasterizer();
         var_586 = new WallAdRasterizer();
         var_397 = new LandscapeRasterizer();
         var_587 = new PlaneMaskManager();
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return var_398;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return var_586;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return var_399;
      }
      
      public function get initialized() : Boolean
      {
         return var_909;
      }
      
      protected function reset() : void
      {
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return var_587;
      }
      
      public function dispose() : void
      {
         if(var_398 != null)
         {
            var_398.dispose();
            var_398 = null;
         }
         if(var_399 != null)
         {
            var_399.dispose();
            var_399 = null;
         }
         if(var_586 != null)
         {
            var_586.dispose();
            var_586 = null;
         }
         if(var_397 != null)
         {
            var_397.dispose();
            var_397 = null;
         }
         if(var_587 != null)
         {
            var_587.dispose();
            var_587 = null;
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            var_398.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            var_399.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            var_586.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            var_397.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            var_587.initialize(_loc11_);
         }
         return true;
      }
      
      public function clearCache() : void
      {
         if(var_398 != null)
         {
            var_398.clearCache();
         }
         if(var_399 != null)
         {
            var_399.clearCache();
         }
         if(var_397 != null)
         {
            var_397.clearCache();
         }
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return var_397;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(var_909)
         {
            return;
         }
         var_398.initializeAssetCollection(param1);
         var_399.initializeAssetCollection(param1);
         var_586.initializeAssetCollection(param1);
         var_397.initializeAssetCollection(param1);
         var_587.initializeAssetCollection(param1);
         var_909 = true;
      }
   }
}
