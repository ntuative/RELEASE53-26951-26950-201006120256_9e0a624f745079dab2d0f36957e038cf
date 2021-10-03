package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1760:int = 0;
      
      private var var_1507:int = 0;
      
      private var var_1759:Boolean = false;
      
      private var var_1758:int = 0;
      
      private var var_1756:int = 0;
      
      private var var_1508:int = 0;
      
      private var var_1757:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubDays() : int
      {
         return var_1507;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1507 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1759 = param1;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         var_1757 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1507 > 0 || var_1508 > 0;
      }
      
      public function get credits() : int
      {
         return var_1758;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         var_1756 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1508;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1759;
      }
      
      public function get pastClubDays() : int
      {
         return var_1757;
      }
      
      public function get pastVipDays() : int
      {
         return var_1756;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1760 = param1;
      }
      
      public function get pixels() : int
      {
         return var_1760;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1508 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1758 = param1;
      }
   }
}
