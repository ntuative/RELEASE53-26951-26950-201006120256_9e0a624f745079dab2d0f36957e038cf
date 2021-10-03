package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_82:Number = 0;
      
      private var var_254:int = 0;
      
      private var var_1822:int = 0;
      
      private var var_1821:Number = 0;
      
      private var var_1824:Number = 0;
      
      private var var_1826:Number = 0;
      
      private var var_1825:Number = 0;
      
      private var var_1823:Boolean = false;
      
      private var var_81:Number = 0;
      
      private var _id:int = 0;
      
      private var var_225:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_225 = [];
         super();
         _id = param1;
         var_81 = param2;
         _y = param3;
         var_82 = param4;
         var_1825 = param5;
         var_254 = param6;
         var_1822 = param7;
         var_1821 = param8;
         var_1824 = param9;
         var_1826 = param10;
         var_1823 = param11;
         var_225 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_82;
      }
      
      public function get dir() : int
      {
         return var_254;
      }
      
      public function get localZ() : Number
      {
         return var_1825;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1823;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1822;
      }
      
      public function get targetX() : Number
      {
         return var_1821;
      }
      
      public function get targetY() : Number
      {
         return var_1824;
      }
      
      public function get targetZ() : Number
      {
         return var_1826;
      }
      
      public function get x() : Number
      {
         return var_81;
      }
      
      public function get actions() : Array
      {
         return var_225.slice();
      }
   }
}
