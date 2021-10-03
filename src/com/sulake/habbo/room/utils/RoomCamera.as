package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_363:Number = 0.5;
      
      private static const const_768:int = 3;
      
      private static const const_1060:Number = 1;
       
      
      private var var_1728:Boolean = false;
      
      private var var_1730:Boolean = false;
      
      private var var_1023:int = 0;
      
      private var var_259:Vector3d = null;
      
      private var var_1731:int = 0;
      
      private var var_1726:int = 0;
      
      private var var_1729:Boolean = false;
      
      private var var_1723:int = -2;
      
      private var var_1732:Boolean = false;
      
      private var var_1725:int = 0;
      
      private var var_1724:int = -1;
      
      private var var_401:Vector3d = null;
      
      private var var_1727:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1731;
      }
      
      public function get targetId() : int
      {
         return var_1724;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1725 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1731 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1728 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1724 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1730 = param1;
      }
      
      public function dispose() : void
      {
         var_401 = null;
         var_259 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_401 == null)
         {
            var_401 = new Vector3d();
         }
         var_401.assign(param1);
         var_1023 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1723;
      }
      
      public function get screenHt() : int
      {
         return var_1727;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1726 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_259;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1727 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1725;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1728;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1730;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_401 != null && var_259 != null)
         {
            ++var_1023;
            _loc2_ = Vector3d.dif(var_401,var_259);
            if(_loc2_.length <= const_363)
            {
               var_259 = var_401;
               var_401 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_363 * (const_768 + 1))
               {
                  _loc2_.mul(const_363);
               }
               else if(var_1023 <= const_768)
               {
                  _loc2_.mul(const_363);
               }
               else
               {
                  _loc2_.mul(const_1060);
               }
               var_259 = Vector3d.sum(var_259,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1729 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1726;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1732 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1723 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_259 != null)
         {
            return;
         }
         var_259 = new Vector3d();
         var_259.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1729;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1732;
      }
   }
}
