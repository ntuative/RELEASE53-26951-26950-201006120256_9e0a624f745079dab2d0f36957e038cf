package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_230:String = "e";
      
      public static const const_84:String = "i";
      
      public static const const_85:String = "s";
       
      
      private var var_1030:String;
      
      private var var_1217:String;
      
      private var var_1216:int;
      
      private var var_2084:int;
      
      private var var_1031:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1217 = param1.readString();
         var_2084 = param1.readInteger();
         var_1030 = param1.readString();
         var_1031 = param1.readInteger();
         var_1216 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1031;
      }
      
      public function get productType() : String
      {
         return var_1217;
      }
      
      public function get expiration() : int
      {
         return var_1216;
      }
      
      public function get furniClassId() : int
      {
         return var_2084;
      }
      
      public function get extraParam() : String
      {
         return var_1030;
      }
   }
}
