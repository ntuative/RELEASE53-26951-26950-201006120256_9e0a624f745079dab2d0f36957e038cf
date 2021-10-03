package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_687:int = -1;
      
      public static const const_960:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_1714:int = -1;
      
      private var var_81:int = 0;
      
      private var var_1205:int = 1;
      
      private var var_833:int = 1;
      
      private var var_1716:Boolean = false;
      
      private var var_1715:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_81 = param2;
         _y = param3;
         var_1716 = param5;
         if(param4 < 0)
         {
            param4 = const_687;
         }
         var_833 = param4;
         var_1205 = param4;
         if(param6 >= 0)
         {
            var_1714 = param6;
            var_1715 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_833 > 0 && param1 > var_833)
         {
            param1 = var_833;
         }
         var_1205 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_833;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_1715;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_833 < 0)
         {
            return const_687;
         }
         return var_1205;
      }
      
      public function get activeSequence() : int
      {
         return var_1714;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_1716;
      }
      
      public function get x() : int
      {
         return var_81;
      }
   }
}
