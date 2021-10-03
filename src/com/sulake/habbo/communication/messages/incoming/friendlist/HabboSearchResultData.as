package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2425:Boolean;
      
      private var var_2424:int;
      
      private var var_2423:Boolean;
      
      private var var_1698:String;
      
      private var var_1283:String;
      
      private var var_1832:int;
      
      private var var_2369:String;
      
      private var var_2422:String;
      
      private var var_2368:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1832 = param1.readInteger();
         this.var_1698 = param1.readString();
         this.var_2369 = param1.readString();
         this.var_2425 = param1.readBoolean();
         this.var_2423 = param1.readBoolean();
         param1.readString();
         this.var_2424 = param1.readInteger();
         this.var_2368 = param1.readString();
         this.var_2422 = param1.readString();
         this.var_1283 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1283;
      }
      
      public function get avatarName() : String
      {
         return this.var_1698;
      }
      
      public function get avatarId() : int
      {
         return this.var_1832;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2425;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2422;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2368;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2423;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2369;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2424;
      }
   }
}
