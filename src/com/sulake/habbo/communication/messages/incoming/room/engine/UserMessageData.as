package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1187:String = "F";
      
      public static const const_975:String = "M";
       
      
      private var var_81:Number = 0;
      
      private var var_454:String = "";
      
      private var var_1965:int = 0;
      
      private var var_1962:String = "";
      
      private var var_1963:int = 0;
      
      private var var_1961:int = 0;
      
      private var var_1967:String = "";
      
      private var var_595:String = "";
      
      private var _id:int = 0;
      
      private var var_201:Boolean = false;
      
      private var var_254:int = 0;
      
      private var var_1964:String = "";
      
      private var _name:String = "";
      
      private var var_1966:int = 0;
      
      private var _y:Number = 0;
      
      private var var_82:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_82;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_254;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_201)
         {
            var_254 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_201)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1965;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_201)
         {
            var_1963 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1964;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_201)
         {
            var_1967 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_201)
         {
            var_1964 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_201)
         {
            var_1961 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_201)
         {
            var_454 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_201)
         {
            var_1965 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_201)
         {
            var_595 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1963;
      }
      
      public function get groupID() : String
      {
         return var_1967;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_201)
         {
            var_1966 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_201)
         {
            var_1962 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_201 = true;
      }
      
      public function get sex() : String
      {
         return var_595;
      }
      
      public function get figure() : String
      {
         return var_454;
      }
      
      public function get webID() : int
      {
         return var_1966;
      }
      
      public function get custom() : String
      {
         return var_1962;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_201)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_201)
         {
            var_82 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_201)
         {
            var_81 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_81;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1961;
      }
   }
}
