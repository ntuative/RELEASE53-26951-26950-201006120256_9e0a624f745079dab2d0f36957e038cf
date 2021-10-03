package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1839:int;
      
      private var var_1843:int;
      
      private var var_1838:int;
      
      private var var_1970:int;
      
      private var _nutrition:int;
      
      private var var_1247:int;
      
      private var var_1969:int;
      
      private var var_1968:int;
      
      private var _energy:int;
      
      private var var_1841:int;
      
      private var var_1971:int;
      
      private var _ownerName:String;
      
      private var var_1842:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1839;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1843 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1839 = param1;
      }
      
      public function get petId() : int
      {
         return var_1247;
      }
      
      public function get experienceMax() : int
      {
         return var_1968;
      }
      
      public function get nutritionMax() : int
      {
         return var_1970;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1969 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1842;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1247 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1971;
      }
      
      public function get respect() : int
      {
         return var_1843;
      }
      
      public function get levelMax() : int
      {
         return var_1969;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1968 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1838 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1970 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1842 = param1;
      }
      
      public function get experience() : int
      {
         return var_1838;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1971 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1841 = param1;
      }
      
      public function get age() : int
      {
         return var_1841;
      }
   }
}
