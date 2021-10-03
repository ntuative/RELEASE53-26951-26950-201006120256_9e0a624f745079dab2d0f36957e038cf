package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1201:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_829:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1201 = param1;
         var_829 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_829;
      }
      
      public function get identifier() : IID
      {
         return var_1201;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1201 = null;
            while(false)
            {
               var_829.pop();
            }
            var_829 = null;
         }
      }
   }
}
