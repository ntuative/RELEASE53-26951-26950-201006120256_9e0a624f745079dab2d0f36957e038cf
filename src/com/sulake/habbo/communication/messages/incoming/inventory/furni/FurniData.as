package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1478:String;
      
      private var var_1100:String;
      
      private var var_2098:Boolean;
      
      private var var_1654:int;
      
      private var var_2004:int;
      
      private var var_2099:Boolean;
      
      private var var_1676:String = "";
      
      private var var_2006:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1466:int;
      
      private var var_2005:Boolean;
      
      private var var_1809:int = -1;
      
      private var var_1787:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_2004 = param1;
         var_1100 = param2;
         _objId = param3;
         var_1466 = param4;
         _category = param5;
         var_1478 = param6;
         var_2098 = param7;
         var_2006 = param8;
         var_2005 = param9;
         var_2099 = param10;
         var_1787 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1676;
      }
      
      public function get extra() : int
      {
         return var_1654;
      }
      
      public function get classId() : int
      {
         return var_1466;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_2099;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_2098;
      }
      
      public function get stripId() : int
      {
         return var_2004;
      }
      
      public function get stuffData() : String
      {
         return var_1478;
      }
      
      public function get songId() : int
      {
         return var_1809;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1676 = param1;
         var_1654 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1100;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1787;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_2005;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_2006;
      }
   }
}
