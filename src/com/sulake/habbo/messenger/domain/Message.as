package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_604:int = 2;
      
      public static const const_876:int = 6;
      
      public static const const_580:int = 1;
      
      public static const const_732:int = 3;
      
      public static const const_882:int = 4;
      
      public static const const_689:int = 5;
       
      
      private var var_1835:String;
      
      private var var_1162:int;
      
      private var var_1836:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1162 = param2;
         var_1836 = param3;
         var_1835 = param4;
      }
      
      public function get time() : String
      {
         return var_1835;
      }
      
      public function get senderId() : int
      {
         return var_1162;
      }
      
      public function get messageText() : String
      {
         return var_1836;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
