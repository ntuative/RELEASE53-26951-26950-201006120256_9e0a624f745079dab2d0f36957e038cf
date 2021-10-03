package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2345:Class;
      
      private var var_2346:Class;
      
      private var var_2347:String;
      
      private var var_1451:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2347 = param1;
         var_2346 = param2;
         var_2345 = param3;
         if(rest == null)
         {
            var_1451 = new Array();
         }
         else
         {
            var_1451 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2345;
      }
      
      public function get assetClass() : Class
      {
         return var_2346;
      }
      
      public function get mimeType() : String
      {
         return var_2347;
      }
      
      public function get fileTypes() : Array
      {
         return var_1451;
      }
   }
}
