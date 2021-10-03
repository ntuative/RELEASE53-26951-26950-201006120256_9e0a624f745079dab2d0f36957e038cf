package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1311:int = 2;
      
      public static const const_1481:int = 1;
       
      
      private var var_1816:int;
      
      private var var_1815:int;
      
      private var var_1759:Boolean;
      
      private var var_1814:int;
      
      private var var_1242:String;
      
      private var var_1817:Boolean;
      
      private var var_1756:int;
      
      private var var_1818:int;
      
      private var var_1757:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1815;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1759;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1818;
      }
      
      public function get memberPeriods() : int
      {
         return var_1814;
      }
      
      public function get productName() : String
      {
         return var_1242;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1817;
      }
      
      public function get responseType() : int
      {
         return var_1816;
      }
      
      public function get pastClubDays() : int
      {
         return var_1757;
      }
      
      public function get pastVipDays() : int
      {
         return var_1756;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1242 = param1.readString();
         var_1815 = param1.readInteger();
         var_1814 = param1.readInteger();
         var_1818 = param1.readInteger();
         var_1816 = param1.readInteger();
         var_1817 = param1.readBoolean();
         var_1759 = param1.readBoolean();
         var_1757 = param1.readInteger();
         var_1756 = param1.readInteger();
         return true;
      }
   }
}
