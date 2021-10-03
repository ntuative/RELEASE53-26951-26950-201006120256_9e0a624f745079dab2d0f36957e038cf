package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1568:String;
      
      private var var_1616:String;
      
      private var var_1038:String;
      
      private var var_424:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1568 = String(param1.@align);
         var_1038 = String(param1.@base);
         var_1616 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_424 = Number(_loc2_);
            if(var_424 > 1)
            {
               var_424 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1568;
      }
      
      public function get ink() : String
      {
         return var_1616;
      }
      
      public function get base() : String
      {
         return var_1038;
      }
      
      public function get isBlended() : Boolean
      {
         return var_424 != 1;
      }
      
      public function get blend() : Number
      {
         return var_424;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
