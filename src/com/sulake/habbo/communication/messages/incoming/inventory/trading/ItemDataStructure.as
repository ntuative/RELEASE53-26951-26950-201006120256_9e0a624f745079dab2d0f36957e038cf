package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1100:String;
      
      private var var_1803:int;
      
      private var var_2263:int;
      
      private var var_1654:int;
      
      private var var_2267:int;
      
      private var _category:int;
      
      private var var_2521:int;
      
      private var var_2266:int;
      
      private var var_2262:int;
      
      private var var_2268:int;
      
      private var var_2265:int;
      
      private var var_2264:Boolean;
      
      private var var_1478:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1803 = param1;
         var_1100 = param2;
         var_2263 = param3;
         var_2268 = param4;
         _category = param5;
         var_1478 = param6;
         var_1654 = param7;
         var_2262 = param8;
         var_2266 = param9;
         var_2265 = param10;
         var_2267 = param11;
         var_2264 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2268;
      }
      
      public function get extra() : int
      {
         return var_1654;
      }
      
      public function get stuffData() : String
      {
         return var_1478;
      }
      
      public function get groupable() : Boolean
      {
         return var_2264;
      }
      
      public function get creationMonth() : int
      {
         return var_2265;
      }
      
      public function get roomItemID() : int
      {
         return var_2263;
      }
      
      public function get itemType() : String
      {
         return var_1100;
      }
      
      public function get itemID() : int
      {
         return var_1803;
      }
      
      public function get songID() : int
      {
         return var_1654;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2262;
      }
      
      public function get creationYear() : int
      {
         return var_2267;
      }
      
      public function get creationDay() : int
      {
         return var_2266;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
