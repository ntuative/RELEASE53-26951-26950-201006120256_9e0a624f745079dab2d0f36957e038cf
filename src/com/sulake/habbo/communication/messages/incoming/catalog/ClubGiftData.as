package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_2261:int;
      
      private var var_2260:Boolean;
      
      private var _offerId:int;
      
      private var var_1959:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_2260 = param1.readBoolean();
         var_2261 = param1.readInteger();
         var_1959 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1959;
      }
      
      public function get monthsRequired() : int
      {
         return var_2261;
      }
      
      public function get isVip() : Boolean
      {
         return var_2260;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
