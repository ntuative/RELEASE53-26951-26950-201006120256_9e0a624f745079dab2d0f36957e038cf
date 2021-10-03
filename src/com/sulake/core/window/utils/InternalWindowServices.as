package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_122:DisplayObject;
      
      private var var_2471:uint;
      
      private var var_980:IWindowToolTipAgentService;
      
      private var var_981:IWindowMouseScalingService;
      
      private var var_243:IWindowContext;
      
      private var var_978:IWindowFocusManagerService;
      
      private var var_977:IWindowMouseListenerService;
      
      private var var_979:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2471 = 0;
         var_122 = param2;
         var_243 = param1;
         var_979 = new WindowMouseDragger(param2);
         var_981 = new WindowMouseScaler(param2);
         var_977 = new WindowMouseListener(param2);
         var_978 = new FocusManager(param2);
         var_980 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_981;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_978;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_980;
      }
      
      public function dispose() : void
      {
         if(var_979 != null)
         {
            var_979.dispose();
            var_979 = null;
         }
         if(var_981 != null)
         {
            var_981.dispose();
            var_981 = null;
         }
         if(var_977 != null)
         {
            var_977.dispose();
            var_977 = null;
         }
         if(var_978 != null)
         {
            var_978.dispose();
            var_978 = null;
         }
         if(var_980 != null)
         {
            var_980.dispose();
            var_980 = null;
         }
         var_243 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_977;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_979;
      }
   }
}
