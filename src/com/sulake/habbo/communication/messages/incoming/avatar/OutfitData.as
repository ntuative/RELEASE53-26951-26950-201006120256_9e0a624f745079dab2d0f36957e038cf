package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2213:String;
      
      private var var_671:String;
      
      private var var_1676:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1676 = param1.readInteger();
         var_2213 = param1.readString();
         var_671 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_671;
      }
      
      public function get figureString() : String
      {
         return var_2213;
      }
      
      public function get slotId() : int
      {
         return var_1676;
      }
   }
}
