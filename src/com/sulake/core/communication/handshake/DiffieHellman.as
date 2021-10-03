package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1406:BigInteger;
      
      private var var_678:BigInteger;
      
      private var var_1647:BigInteger;
      
      private var var_1648:BigInteger;
      
      private var var_2243:BigInteger;
      
      private var var_2242:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1406 = param1;
         var_1647 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2243.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1648 = new BigInteger();
         var_1648.fromRadix(param1,param2);
         var_2243 = var_1648.modPow(var_678,var_1406);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_2242.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1406.toString() + ",generator: " + var_1647.toString() + ",secret: " + param1);
         var_678 = new BigInteger();
         var_678.fromRadix(param1,param2);
         var_2242 = var_1647.modPow(var_678,var_1406);
         return true;
      }
   }
}
