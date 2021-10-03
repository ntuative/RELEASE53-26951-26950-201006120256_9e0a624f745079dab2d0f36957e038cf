package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_894:LegacyWallGeometry = null;
      
      private var var_625:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_626:TileHeightMap = null;
      
      private var var_1949:String = null;
      
      private var _roomId:int = 0;
      
      private var var_624:SelectedRoomObjectData = null;
      
      private var var_895:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_894 = new LegacyWallGeometry();
         var_895 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_625 != null)
         {
            var_625.dispose();
         }
         var_625 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_626 != null)
         {
            var_626.dispose();
         }
         var_626 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1949 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_894;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_624;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_895;
      }
      
      public function dispose() : void
      {
         if(var_626 != null)
         {
            var_626.dispose();
            var_626 = null;
         }
         if(var_894 != null)
         {
            var_894.dispose();
            var_894 = null;
         }
         if(var_895 != null)
         {
            var_895.dispose();
            var_895 = null;
         }
         if(var_625 != null)
         {
            var_625.dispose();
            var_625 = null;
         }
         if(var_624 != null)
         {
            var_624.dispose();
            var_624 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_626;
      }
      
      public function get worldType() : String
      {
         return var_1949;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_624 != null)
         {
            var_624.dispose();
         }
         var_624 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_625;
      }
   }
}
