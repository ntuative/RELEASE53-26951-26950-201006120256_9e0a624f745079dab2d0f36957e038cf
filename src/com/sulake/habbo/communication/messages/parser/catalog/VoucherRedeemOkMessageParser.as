package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1242:String = "";
      
      private var var_1243:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1243 = "";
         var_1242 = "";
         return true;
      }
      
      public function get productName() : String
      {
         return var_1242;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1243 = param1.readString();
         var_1242 = param1.readString();
         return true;
      }
      
      public function get productDescription() : String
      {
         return var_1243;
      }
   }
}
