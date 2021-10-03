package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1423:int;
      
      private var var_1032:String;
      
      private var var_696:Array;
      
      private var var_1037:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_696.slice();
      }
      
      public function flush() : Boolean
      {
         var_1032 = "";
         var_1037 = [];
         var_696 = [];
         var_1423 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1423;
      }
      
      public function get question() : String
      {
         return var_1032;
      }
      
      public function get choices() : Array
      {
         return var_1037.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1032 = param1.readString();
         var_1037 = [];
         var_696 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1037.push(param1.readString());
            var_696.push(param1.readInteger());
            _loc3_++;
         }
         var_1423 = param1.readInteger();
         return true;
      }
   }
}
