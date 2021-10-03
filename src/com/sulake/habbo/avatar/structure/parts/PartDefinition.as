package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1499:int = -1;
      
      private var var_1215:Boolean;
      
      private var var_1214:String;
      
      private var var_1746:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_1746 = String(param1["set-type"]);
         var_1214 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1215 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1499 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1214;
      }
      
      public function get staticId() : int
      {
         return var_1499;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1499 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1215;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1215 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1214 = param1;
      }
      
      public function get setType() : String
      {
         return var_1746;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
