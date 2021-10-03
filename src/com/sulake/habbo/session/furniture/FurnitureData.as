package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1533:String = "e";
      
      public static const const_1524:String = "i";
      
      public static const const_1553:String = "s";
       
      
      private var _id:int;
      
      private var var_1994:String;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_1995:int;
      
      private var var_1309:Array;
      
      private var var_1992:int;
      
      private var var_1991:int;
      
      private var var_1993:int;
      
      private var _name:String;
      
      private var _revision:int;
      
      private var var_1369:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String, param12:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_1995 = param4;
         _revision = param5;
         var_1992 = param6;
         var_1991 = param7;
         var_1993 = param8;
         var_1309 = param9;
         _title = param10;
         var_1369 = param11;
         var_1994 = param12;
      }
      
      public function get tileSizeY() : int
      {
         return var_1991;
      }
      
      public function get tileSizeZ() : int
      {
         return var_1993;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get adUrl() : String
      {
         return var_1994;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return _revision;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_1995;
      }
      
      public function get tileSizeX() : int
      {
         return var_1992;
      }
      
      public function get colours() : Array
      {
         return var_1309;
      }
      
      public function get description() : String
      {
         return var_1369;
      }
   }
}