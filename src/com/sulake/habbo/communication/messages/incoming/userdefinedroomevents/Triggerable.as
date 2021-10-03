package com.sulake.habbo.communication.messages.incoming.userdefinedroomevents
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class Triggerable
   {
       
      
      private var var_1450:String;
      
      private var var_1559:String;
      
      private var var_2018:int;
      
      private var var_2019:int;
      
      private var var_336:int;
      
      public function Triggerable(param1:IMessageDataWrapper)
      {
         super();
         var_336 = param1.readInteger();
         var_1450 = param1.readString();
         var_1559 = param1.readString();
         var_2019 = param1.readInteger();
         var_2018 = param1.readInteger();
      }
      
      public function get params() : String
      {
         return var_1559;
      }
      
      public function get cooldownPeriod() : int
      {
         return var_2018;
      }
      
      public function get performCount() : int
      {
         return var_2019;
      }
      
      public function get stuffId() : int
      {
         return var_336;
      }
      
      public function get stuffName() : String
      {
         return var_1450;
      }
   }
}
