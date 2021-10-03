package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_454:String;
      
      private var var_2446:String;
      
      private var var_2447:int;
      
      private var var_2448:int;
      
      private var var_595:String;
      
      private var var_1283:String;
      
      private var _name:String;
      
      private var var_552:int;
      
      private var var_968:int;
      
      private var var_2449:int;
      
      private var _respectTotal:int;
      
      private var var_2445:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2448;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1283;
      }
      
      public function get customData() : String
      {
         return this.var_2446;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_552;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2447;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2445;
      }
      
      public function get figure() : String
      {
         return this.var_454;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_595;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_454 = param1.readString();
         this.var_595 = param1.readString();
         this.var_2446 = param1.readString();
         this.var_1283 = param1.readString();
         this.var_2449 = param1.readInteger();
         this.var_2445 = param1.readString();
         this.var_2447 = param1.readInteger();
         this.var_2448 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_968 = param1.readInteger();
         this.var_552 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2449;
      }
      
      public function get respectLeft() : int
      {
         return this.var_968;
      }
   }
}
