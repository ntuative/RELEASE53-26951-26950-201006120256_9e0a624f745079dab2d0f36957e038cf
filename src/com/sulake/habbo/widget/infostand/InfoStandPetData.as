package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1839:int;
      
      private var var_1838:int;
      
      private var var_1970:int;
      
      private var _type:int;
      
      private var var_1247:int = -1;
      
      private var var_1969:int;
      
      private var _nutrition:int;
      
      private var var_1968:int;
      
      private var _energy:int;
      
      private var var_2134:int;
      
      private var var_1971:int;
      
      private var var_2285:int;
      
      private var var_1841:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_2286:Boolean;
      
      private var _name:String = "";
      
      private var var_1842:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_2286;
      }
      
      public function get level() : int
      {
         return var_1839;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1968;
      }
      
      public function get id() : int
      {
         return var_1247;
      }
      
      public function get nutritionMax() : int
      {
         return var_1970;
      }
      
      public function get ownerId() : int
      {
         return var_1842;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1247 = param1.id;
         _type = param1.petType;
         var_2134 = param1.petRace;
         _image = param1.image;
         var_2286 = param1.isOwnPet;
         var_1842 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1839 = param1.level;
         var_1969 = param1.levelMax;
         var_1838 = param1.experience;
         var_1968 = param1.experienceMax;
         _energy = param1.energy;
         var_1971 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1970 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_2285 = param1.roomIndex;
         var_1841 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_2285;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_1971;
      }
      
      public function get levelMax() : int
      {
         return var_1969;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_2134;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1838;
      }
      
      public function get age() : int
      {
         return var_1841;
      }
   }
}
