package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_993:BigInteger;
      
      private var var_2242:BigInteger;
      
      private var var_1908:BigInteger;
      
      private var var_2702:BigInteger;
      
      private var var_1489:BigInteger;
      
      private var var_1907:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1489 = param1;
         this.var_1907 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1489.toString() + ",generator: " + this.var_1907.toString() + ",secret: " + param1);
         this.var_993 = new BigInteger();
         this.var_993.fromRadix(param1,param2);
         this.var_2242 = this.var_1907.modPow(this.var_993,this.var_1489);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1908 = new BigInteger();
         this.var_1908.fromRadix(param1,param2);
         this.var_2702 = this.var_1908.modPow(this.var_993,this.var_1489);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2242.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2702.toRadix(param1);
      }
   }
}
