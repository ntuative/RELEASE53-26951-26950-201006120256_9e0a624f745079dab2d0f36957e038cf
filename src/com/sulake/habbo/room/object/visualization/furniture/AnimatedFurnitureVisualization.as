package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.habbo.room.object.visualization.furniture.data.AnimationFrame;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   
   public class AnimatedFurnitureVisualization extends FurnitureVisualization
   {
       
      
      private var var_1577:int = 0;
      
      private var var_1998:Number = 0;
      
      private var _lastFramePlayed:Array;
      
      private var var_521:int = 0;
      
      private var var_631:AnimatedFurnitureVisualizationData = null;
      
      private var var_315:Array;
      
      private var var_632:Boolean = false;
      
      public function AnimatedFurnitureVisualization()
      {
         var_315 = [];
         _lastFramePlayed = [];
         super();
      }
      
      public function get animationId() : int
      {
         return var_1577;
      }
      
      protected function setAnimation(param1:int) : void
      {
         var_1577 = param1;
         var_521 = 0;
         var_315 = [];
         _lastFramePlayed = [];
         var_632 = false;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         var_631 = null;
         var_315 = null;
         _lastFramePlayed = null;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         if(!(param1 is AnimatedFurnitureVisualizationData))
         {
            return false;
         }
         var_631 = param1 as AnimatedFurnitureVisualizationData;
         return super.initialize(param1);
      }
      
      override protected function updateObject(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         if(super.updateObject(param1,param2))
         {
            _loc3_ = object;
            if(_loc3_ == null)
            {
               return false;
            }
            _loc4_ = _loc3_.getState(0);
            if(_loc4_ != var_1577)
            {
               setAnimation(_loc4_);
            }
            return true;
         }
         return false;
      }
      
      override protected function getFrameNumber(param1:int, param2:int) : int
      {
         var _loc3_:* = null;
         if(param1 >= 0 && param1 < var_315.length)
         {
            _loc3_ = var_315[param1] as AnimationFrame;
            if(_loc3_ != null)
            {
               return _loc3_.id;
            }
         }
         return super.getFrameNumber(param1,param2);
      }
      
      protected function getLastFramePlayed(param1:int) : Boolean
      {
         if(param1 < 0 || param1 >= _lastFramePlayed.length)
         {
            return false;
         }
         return _lastFramePlayed[param1];
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         var _loc5_:* = null;
         var _loc6_:int = 0;
         if(var_631 == null)
         {
            return false;
         }
         if(param1 != var_1998)
         {
            var_315 = [];
            _lastFramePlayed = [];
            var_632 = false;
         }
         if(var_632)
         {
            return false;
         }
         if(var_521 == 0)
         {
            var_521 = var_631.getStartFrame(animationId,param1);
         }
         var_521 += 1;
         var _loc3_:Boolean = false;
         var_632 = true;
         var _loc4_:int = var_631.getLayerCount(param1) - 1;
         while(_loc4_ >= 0)
         {
            _loc5_ = null;
            if(_loc4_ < var_315.length)
            {
               _loc5_ = var_315[_loc4_] as AnimationFrame;
            }
            _lastFramePlayed[_loc4_] = false;
            if(_loc5_ != null)
            {
               if(_loc5_.isLastFrame && _loc5_.remainingFrameRepeats <= 1)
               {
                  _lastFramePlayed[_loc4_] = true;
               }
            }
            if(_loc5_ == null || _loc5_.remainingFrameRepeats >= 0 && _loc7_ <= 0)
            {
               _loc6_ = 0;
               if(_loc5_ != null)
               {
                  _loc6_ = _loc5_.activeSequence;
               }
               if(_loc6_ == AnimationFrame.const_960)
               {
                  _loc5_ = var_631.getFrame(_loc4_,animationId,var_521,param1);
               }
               else
               {
                  _loc5_ = var_631.getFrameFromSequence(_loc4_,animationId,_loc6_,_loc5_.activeSequenceOffset + 1,var_521,param1);
               }
               var_315[_loc4_] = _loc5_;
               if(_loc5_ != null)
               {
                  _loc3_ = true;
               }
            }
            if(_loc5_ == null || _loc5_.isLastFrame && _loc5_.remainingFrameRepeats <= 0)
            {
               _lastFramePlayed[_loc4_] = true;
            }
            else if(_loc5_.remainingFrameRepeats >= 0)
            {
               var_632 = false;
            }
            _loc4_--;
         }
         var_1998 = param1;
         return _loc3_;
      }
   }
}
