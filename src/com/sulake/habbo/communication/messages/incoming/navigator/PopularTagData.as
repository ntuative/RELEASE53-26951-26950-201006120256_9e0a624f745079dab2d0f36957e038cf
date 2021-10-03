package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_2017:int;
      
      private var var_2249:String;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         var_2249 = param1.readString();
         var_2017 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return var_2249;
      }
      
      public function get userCount() : int
      {
         return var_2017;
      }
   }
}
