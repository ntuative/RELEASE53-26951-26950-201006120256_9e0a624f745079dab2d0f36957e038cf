package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1081:int = 1;
      
      private static const const_1072:int = 3;
      
      private static const const_1080:int = 2;
      
      private static const const_1082:int = 15;
       
      
      private var var_884:int;
      
      private var var_252:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_252 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1080)
         {
            var_252 = new Array();
            var_252.push(const_1081);
            var_884 = const_1082;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_884 > 0)
         {
            --var_884;
         }
         if(var_884 == 0)
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
