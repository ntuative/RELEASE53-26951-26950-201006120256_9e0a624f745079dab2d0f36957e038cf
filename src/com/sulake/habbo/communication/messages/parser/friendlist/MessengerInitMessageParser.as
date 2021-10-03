package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2437:int;
      
      private var var_2440:int;
      
      private var var_91:Array;
      
      private var var_255:Array;
      
      private var var_2439:int;
      
      private var var_2435:int;
      
      private var var_2438:int;
      
      private var var_2436:int;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_91 = new Array();
         this.var_255 = new Array();
         return true;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2437;
      }
      
      public function get friends() : Array
      {
         return this.var_255;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2439;
      }
      
      public function get categories() : Array
      {
         return this.var_91;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2440;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2436;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2436 = param1.readInteger();
         this.var_2439 = param1.readInteger();
         this.var_2437 = param1.readInteger();
         this.var_2438 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_91.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_255.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2440 = param1.readInteger();
         this.var_2435 = param1.readInteger();
         return true;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2438;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2435;
      }
   }
}
