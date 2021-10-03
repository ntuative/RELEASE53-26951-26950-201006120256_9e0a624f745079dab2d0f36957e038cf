package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_454:String = "";
      
      private var var_1962:String = "";
      
      private var var_1963:int = 0;
      
      private var var_1961:int = 0;
      
      private var _type:int = 0;
      
      private var var_1967:String = "";
      
      private var var_595:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1966:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1963 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1967 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_454 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_595 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1963;
      }
      
      public function set webID(param1:int) : void
      {
         var_1966 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1967;
      }
      
      public function set custom(param1:String) : void
      {
         var_1962 = param1;
      }
      
      public function get figure() : String
      {
         return var_454;
      }
      
      public function get sex() : String
      {
         return var_595;
      }
      
      public function get custom() : String
      {
         return var_1962;
      }
      
      public function get webID() : int
      {
         return var_1966;
      }
      
      public function set xp(param1:int) : void
      {
         var_1961 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1961;
      }
   }
}
