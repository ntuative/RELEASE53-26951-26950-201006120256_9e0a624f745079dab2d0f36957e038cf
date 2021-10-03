package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1637:int = 5;
      
      public static const const_1694:int = 113;
      
      public static const const_1691:int = 29;
      
      public static const const_1498:int = 0;
      
      public static const const_1603:int = 102;
      
      public static const const_1693:int = 25;
      
      public static const const_1618:int = 20;
      
      public static const const_1558:int = 116;
      
      public static const const_1688:int = 114;
      
      public static const const_1602:int = 101;
      
      public static const const_1668:int = 108;
      
      public static const const_1581:int = 112;
      
      public static const const_1532:int = 100;
      
      public static const const_1570:int = 24;
      
      public static const const_1258:int = 10;
      
      public static const const_1480:int = 111;
      
      public static const const_1495:int = 23;
      
      public static const const_1542:int = 26;
      
      public static const const_1197:int = 2;
      
      public static const const_1623:int = 22;
      
      public static const const_1600:int = 17;
      
      public static const const_1561:int = 18;
      
      public static const const_1525:int = 3;
      
      public static const const_1527:int = 109;
      
      public static const const_1269:int = 1;
      
      public static const const_1482:int = 103;
      
      public static const const_1595:int = 11;
      
      public static const const_1611:int = 28;
      
      public static const const_1586:int = 104;
      
      public static const const_1584:int = 13;
      
      public static const const_1530:int = 107;
      
      public static const const_1577:int = 27;
      
      public static const const_1568:int = 118;
      
      public static const const_1576:int = 115;
      
      public static const const_1563:int = 16;
      
      public static const const_1489:int = 19;
      
      public static const const_1667:int = 4;
      
      public static const const_1624:int = 105;
      
      public static const const_1597:int = 117;
      
      public static const const_1583:int = 119;
      
      public static const const_1501:int = 106;
      
      public static const const_1620:int = 12;
      
      public static const const_1548:int = 110;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_7 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(reason)
         {
            case const_1269:
            case const_1258:
               return "banned";
            case const_1197:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
