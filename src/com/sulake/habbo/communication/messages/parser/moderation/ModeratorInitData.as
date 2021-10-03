package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1052:Array;
      
      private var var_1854:Boolean;
      
      private var var_1053:Array;
      
      private var var_1850:Boolean;
      
      private var var_1853:Boolean;
      
      private var var_1848:Boolean;
      
      private var var_158:Array;
      
      private var var_1852:Boolean;
      
      private var var_1849:Boolean;
      
      private var var_868:Array;
      
      private var var_1847:Boolean;
      
      private var var_1851:Boolean;
      
      public function ModeratorInitData(param1:IMessageDataWrapper)
      {
         super();
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_158 = [];
         var_1053 = [];
         var_1052 = [];
         var_868 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc2_.parse(param1))
            {
               var_158.push(_loc2_.issueData);
            }
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1053.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_868.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1852 = param1.readBoolean();
         var_1848 = param1.readBoolean();
         var_1850 = param1.readBoolean();
         var_1853 = param1.readBoolean();
         var_1851 = param1.readBoolean();
         var_1849 = param1.readBoolean();
         var_1854 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1052.push(param1.readString());
            _loc4_++;
         }
         var_1847 = param1.readBoolean();
      }
      
      public function get banPermission() : Boolean
      {
         return var_1851;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1053;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1850;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1854;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1852;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         var_1053 = null;
         var_1052 = null;
         var_158 = null;
         for each(_loc1_ in var_868)
         {
            _loc1_.dispose();
         }
         var_868 = null;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return var_1052;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1849;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1853;
      }
      
      public function get offenceCategories() : Array
      {
         return var_868;
      }
      
      public function get issues() : Array
      {
         return var_158;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1847;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1848;
      }
   }
}
