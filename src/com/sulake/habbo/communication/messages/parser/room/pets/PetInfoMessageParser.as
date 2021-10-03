package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1841:int;
      
      private var var_454:String;
      
      private var var_1839:int;
      
      private var var_1843:int;
      
      private var var_1838:int;
      
      private var var_1844:int;
      
      private var _nutrition:int;
      
      private var var_1247:int;
      
      private var var_1840:int;
      
      private var var_1845:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1842:int;
      
      private var var_1837:int;
      
      public function PetInfoMessageParser()
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
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_1844;
      }
      
      public function flush() : Boolean
      {
         var_1247 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_1840;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1845;
      }
      
      public function get maxNutrition() : int
      {
         return var_1837;
      }
      
      public function get figure() : String
      {
         return var_454;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1843;
      }
      
      public function get petId() : int
      {
         return var_1247;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1247 = param1.readInteger();
         _name = param1.readString();
         var_1839 = param1.readInteger();
         var_1840 = param1.readInteger();
         var_1838 = param1.readInteger();
         var_1845 = param1.readInteger();
         _energy = param1.readInteger();
         var_1844 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_1837 = param1.readInteger();
         var_454 = param1.readString();
         var_1843 = param1.readInteger();
         var_1842 = param1.readInteger();
         var_1841 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1838;
      }
      
      public function get ownerId() : int
      {
         return var_1842;
      }
      
      public function get age() : int
      {
         return var_1841;
      }
   }
}
