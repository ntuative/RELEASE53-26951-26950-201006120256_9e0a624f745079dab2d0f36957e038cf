package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1110:SoundChannel = null;
      
      private var var_932:Boolean;
      
      private var var_1109:Sound = null;
      
      private var var_694:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1109 = param1;
         var_1109.addEventListener(Event.COMPLETE,onComplete);
         var_694 = 1;
         var_932 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_932;
      }
      
      public function stop() : Boolean
      {
         var_1110.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_932 = false;
         var_1110 = var_1109.play(0);
         this.volume = var_694;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_694;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1110.position;
      }
      
      public function get length() : Number
      {
         return var_1109.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_694 = param1;
         if(var_1110 != null)
         {
            var_1110.soundTransform = new SoundTransform(var_694);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_932 = true;
      }
   }
}
