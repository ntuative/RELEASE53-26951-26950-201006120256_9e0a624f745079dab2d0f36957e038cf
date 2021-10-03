package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_2004:int;
      
      private var var_2006:Boolean;
      
      private var var_1809:int;
      
      private var var_1478:String;
      
      private var var_2003:Boolean = false;
      
      private var var_1787:int;
      
      private var var_474:int;
      
      private var var_1100:String;
      
      private var var_1676:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1466:int;
      
      private var var_2005:Boolean;
      
      private var var_2007:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_2004 = param1;
         var_1100 = param2;
         _objId = param3;
         var_1466 = param4;
         var_1478 = param5;
         var_2006 = param6;
         var_2005 = param7;
         var_1787 = param8;
         var_1676 = param9;
         var_1809 = param10;
         var_474 = -1;
      }
      
      public function get songId() : int
      {
         return var_1809;
      }
      
      public function get iconCallbackId() : int
      {
         return var_474;
      }
      
      public function get expiryTime() : int
      {
         return var_1787;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2007 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2003 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_474 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_2005;
      }
      
      public function get slotId() : String
      {
         return var_1676;
      }
      
      public function get classId() : int
      {
         return var_1466;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_2006;
      }
      
      public function get stuffData() : String
      {
         return var_1478;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_2004;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2003;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2007;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1100;
      }
   }
}
