package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_775:String;
      
      private var var_1871:int;
      
      private var var_1517:Boolean;
      
      private var _roomId:int;
      
      private var var_1870:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1517 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_775 = param1.readString();
         var_1870 = param1.readInteger();
         var_1871 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1517;
      }
      
      public function get roomName() : String
      {
         return var_775;
      }
      
      public function get enterMinute() : int
      {
         return var_1871;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1870;
      }
   }
}
