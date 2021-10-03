package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2237:Number;
      
      private var var_654:Number = 0;
      
      private var var_2236:Number;
      
      private var var_655:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2237 = param1;
         var_2236 = param2;
      }
      
      public function update() : void
      {
         var_655 += var_2236;
         var_654 += var_655;
         if(var_654 > 0)
         {
            var_654 = 0;
            var_655 = var_2237 * -1 * var_655;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_655 = param1;
         var_654 = 0;
      }
      
      public function get location() : Number
      {
         return var_654;
      }
   }
}
