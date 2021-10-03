package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2009:int = 0;
      
      public static const const_1501:int = 1;
      
      public static const const_1463:int = 2;
      
      public static const const_2005:int = 3;
      
      public static const const_1898:int = 4;
      
      public static const const_1824:int = 5;
      
      public static const const_1483:int = 10;
      
      public static const const_1954:int = 11;
      
      public static const const_1815:int = 12;
      
      public static const const_1812:int = 13;
      
      public static const const_1907:int = 16;
      
      public static const const_1980:int = 17;
      
      public static const const_1989:int = 18;
      
      public static const const_1903:int = 19;
      
      public static const const_1801:int = 20;
      
      public static const const_1977:int = 22;
      
      public static const const_1902:int = 23;
      
      public static const const_1832:int = 24;
      
      public static const const_2007:int = 25;
      
      public static const const_1890:int = 26;
      
      public static const const_1909:int = 27;
      
      public static const const_1862:int = 28;
      
      public static const const_1833:int = 29;
      
      public static const const_2018:int = 100;
      
      public static const const_1911:int = 101;
      
      public static const const_1806:int = 102;
      
      public static const const_1986:int = 103;
      
      public static const const_1829:int = 104;
      
      public static const const_1959:int = 105;
      
      public static const const_1889:int = 106;
      
      public static const const_1839:int = 107;
      
      public static const const_1948:int = 108;
      
      public static const const_1921:int = 109;
      
      public static const const_1970:int = 110;
      
      public static const const_1837:int = 111;
      
      public static const const_1999:int = 112;
      
      public static const const_1847:int = 113;
      
      public static const const_1849:int = 114;
      
      public static const const_1896:int = 115;
      
      public static const const_1993:int = 116;
      
      public static const const_1861:int = 117;
      
      public static const const_1974:int = 118;
      
      public static const const_1953:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1501:
            case const_1483:
               return "banned";
            case const_1463:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
