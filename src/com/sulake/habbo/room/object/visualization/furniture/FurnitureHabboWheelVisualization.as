package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1152:int = 31;
      
      private static const const_1072:int = 32;
      
      private static const const_807:int = 10;
      
      private static const const_527:int = 20;
       
      
      private var var_656:Boolean = false;
      
      private var var_252:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_252 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!var_656)
            {
               var_656 = true;
               var_252 = new Array();
               var_252.push(const_1152);
               var_252.push(const_1072);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_807)
         {
            if(var_656)
            {
               var_656 = false;
               var_252 = new Array();
               var_252.push(const_807 + param1);
               var_252.push(const_527 + param1);
               var_252.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(false)
            {
               super.setAnimation(var_252.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
