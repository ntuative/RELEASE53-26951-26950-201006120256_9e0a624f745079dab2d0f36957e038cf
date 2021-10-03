package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_2088:int;
      
      private var var_2089:int;
      
      private var var_2086:Boolean;
      
      private var var_2090:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2087:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_2089 = param1;
         var_2088 = param2;
         var_2090 = param3;
         var_2087 = param4;
         var_2086 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2089,var_2088,var_2090,var_2087,int(var_2086)];
      }
      
      public function dispose() : void
      {
      }
   }
}
