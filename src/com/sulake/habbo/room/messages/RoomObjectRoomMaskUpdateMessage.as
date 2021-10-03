package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectRoomMaskUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_1401:String = "door";
      
      public static const const_486:String = "window";
      
      public static const const_766:String = "RORMUM_ADD_MASK";
      
      public static const const_427:String = "RORMUM_ADD_MASK";
      
      public static const const_212:String = "hole";
       
      
      private var var_1796:String = "";
      
      private var var_1793:String = "";
      
      private var var_1794:String = "window";
      
      private var var_1795:Vector3d = null;
      
      private var _type:String = "";
      
      public function RoomObjectRoomMaskUpdateMessage(param1:String, param2:String, param3:String = null, param4:IVector3d = null, param5:String = "window")
      {
         super(null,null);
         _type = param1;
         var_1793 = param2;
         var_1796 = param3;
         if(param4 != null)
         {
            var_1795 = new Vector3d(param4.x,param4.y,param4.z);
         }
         var_1794 = param5;
      }
      
      public function get maskCategory() : String
      {
         return var_1794;
      }
      
      public function get maskId() : String
      {
         return var_1793;
      }
      
      public function get maskLocation() : IVector3d
      {
         return var_1795;
      }
      
      public function get maskType() : String
      {
         return var_1796;
      }
      
      public function get type() : String
      {
         return _type;
      }
   }
}
