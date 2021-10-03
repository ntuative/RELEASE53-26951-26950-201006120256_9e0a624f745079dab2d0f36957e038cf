package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_380:Boolean;
      
      private var var_1401:int;
      
      private var var_1500:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1401 = param1.readInteger();
         var_1500 = param1.readString();
         var_380 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_380;
      }
      
      public function get nodeName() : String
      {
         return var_1500;
      }
      
      public function get nodeId() : int
      {
         return var_1401;
      }
   }
}
