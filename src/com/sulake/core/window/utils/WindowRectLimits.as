package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_407:int = -2.147483648E9;
      
      private var var_406:int = 2.147483647E9;
      
      private var var_405:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      private var var_404:int = -2.147483648E9;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         _target = param1;
      }
      
      public function get maxWidth() : int
      {
         return var_406;
      }
      
      public function get isEmpty() : Boolean
      {
         return var_404 == int.MIN_VALUE && var_406 == int.MAX_VALUE && var_407 == int.MIN_VALUE && var_405 == int.MAX_VALUE;
      }
      
      public function set maxWidth(param1:int) : void
      {
         var_406 = param1;
         if(var_406 < int.MAX_VALUE && true && _target.width > var_406)
         {
            _target.width = var_406;
         }
      }
      
      public function setEmpty() : void
      {
         var_404 = int.MIN_VALUE;
         var_406 = int.MAX_VALUE;
         var_407 = int.MIN_VALUE;
         var_405 = int.MAX_VALUE;
      }
      
      public function set maxHeight(param1:int) : void
      {
         var_405 = param1;
         if(var_405 < int.MAX_VALUE && true && _target.height > var_405)
         {
            _target.height = var_405;
         }
      }
      
      public function get minHeight() : int
      {
         return var_407;
      }
      
      public function get minWidth() : int
      {
         return var_404;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_404 = var_404;
         _loc2_.var_406 = var_406;
         _loc2_.var_407 = var_407;
         _loc2_.var_405 = var_405;
         return _loc2_;
      }
      
      public function set minWidth(param1:int) : void
      {
         var_404 = param1;
         if(var_404 > int.MIN_VALUE && true && _target.width < var_404)
         {
            _target.width = var_404;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         var_407 = param1;
         if(var_407 > int.MIN_VALUE && true && _target.height < var_407)
         {
            _target.height = var_407;
         }
      }
      
      public function get maxHeight() : int
      {
         return var_405;
      }
   }
}
