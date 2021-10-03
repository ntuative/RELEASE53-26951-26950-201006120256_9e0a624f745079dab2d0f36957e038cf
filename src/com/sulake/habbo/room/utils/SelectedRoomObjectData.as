package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var var_74:Vector3d = null;
      
      private var _id:int = 0;
      
      private var var_254:Vector3d = null;
      
      private var var_2036:int = 0;
      
      private var var_2270:String = null;
      
      private var _category:int = 0;
      
      private var var_2269:String = "";
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         _id = param1;
         _category = param2;
         var_2269 = param3;
         var_74 = new Vector3d();
         var_74.assign(param4);
         var_254 = new Vector3d();
         var_254.assign(param5);
         var_2036 = param6;
         var_2270 = param7;
      }
      
      public function get loc() : Vector3d
      {
         return var_74;
      }
      
      public function get typeId() : int
      {
         return var_2036;
      }
      
      public function get dir() : Vector3d
      {
         return var_254;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get instanceData() : String
      {
         return var_2270;
      }
      
      public function get operation() : String
      {
         return var_2269;
      }
      
      public function dispose() : void
      {
         var_74 = null;
         var_254 = null;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
