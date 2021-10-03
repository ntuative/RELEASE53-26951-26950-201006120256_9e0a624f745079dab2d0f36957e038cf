package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1072:int = -1;
      
      private static const const_807:int = 20;
      
      private static const const_527:int = 9;
       
      
      private var var_656:Boolean = false;
      
      private var var_252:Array;
      
      public function FurnitureBottleVisualization()
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
               var_252.push(const_1072);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_656)
            {
               var_656 = false;
               var_252 = new Array();
               var_252.push(const_807);
               var_252.push(const_527 + param1);
               var_252.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
