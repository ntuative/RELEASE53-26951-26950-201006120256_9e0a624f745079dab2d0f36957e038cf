package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2046:Boolean = false;
      
      private var var_2047:int = 0;
      
      private var var_1507:int = 0;
      
      private var var_2048:int = 0;
      
      private var var_1759:Boolean = false;
      
      private var var_1495:int = 0;
      
      private var var_1508:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1495 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2047;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2046;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2046 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1759;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2047 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1507 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1495;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1759 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2048 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1507;
      }
      
      public function get pixelBalance() : int
      {
         return var_2048;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1508 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1508;
      }
   }
}
