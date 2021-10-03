package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_2110:Date;
      
      private var var_1367:Boolean = false;
      
      private var _type:int;
      
      private var var_392:BitmapData;
      
      private var var_260:Boolean = false;
      
      private var var_1296:int;
      
      private var var_643:int = 1;
      
      private var var_1108:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_392;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_643;
         if(var_643 < 0)
         {
            var_643 = 0;
         }
         var_1108 = var_1296;
         var_260 = false;
         var_1367 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_1108 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_260;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_392 = param1;
      }
      
      public function get duration() : int
      {
         return var_1296;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1367;
      }
      
      public function get effectsInInventory() : int
      {
         return var_643;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_392;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_260)
         {
            var_2110 = new Date();
         }
         var_260 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_643 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_260)
         {
            _loc1_ = var_1108 - (new Date().valueOf() - var_2110.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_1108;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1367 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1296 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
