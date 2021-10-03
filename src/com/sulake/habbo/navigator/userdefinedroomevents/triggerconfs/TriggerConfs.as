package com.sulake.habbo.navigator.userdefinedroomevents.triggerconfs
{
   public class TriggerConfs
   {
       
      
      private var var_488:Array;
      
      public function TriggerConfs()
      {
         var_488 = new Array();
         super();
         this.var_488.push(new AvatarSaysSomething());
         this.var_488.push(new AvatarEntersStuff());
         this.var_488.push(new AvatarExitsStuff());
         this.var_488.push(new TriggerOnce());
         this.var_488.push(new StuffIsUsed());
         this.var_488.push(new UseStuffAndStateSnapshotMatches());
      }
      
      public function getByCode(param1:int) : TriggerConf
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_488)
         {
            if(_loc2_.code == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get confs() : Array
      {
         return var_488;
      }
   }
}
