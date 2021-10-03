package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1152:int = 31;
      
      private static const const_1072:int = 32;
      
      private static const const_526:int = 30;
      
      private static const const_807:int = 20;
      
      private static const const_527:int = 10;
       
      
      private var var_656:Boolean = false;
      
      private var var_252:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_252 = new Array();
         super();
         super.setAnimation(const_526);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_527)
         {
            if(var_656)
            {
               var_656 = false;
               var_252 = new Array();
               if(_direction == 2)
               {
                  var_252.push(const_807 + 5 - param1);
                  var_252.push(const_527 + 5 - param1);
               }
               else
               {
                  var_252.push(const_807 + param1);
                  var_252.push(const_527 + param1);
               }
               var_252.push(const_526);
               return;
            }
            super.setAnimation(const_526);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
