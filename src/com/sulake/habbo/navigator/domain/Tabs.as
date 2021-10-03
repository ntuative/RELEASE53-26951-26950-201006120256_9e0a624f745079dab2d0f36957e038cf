package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_550:int = 6;
      
      public static const const_223:int = 5;
      
      public static const const_764:int = 2;
      
      public static const const_323:int = 9;
      
      public static const const_318:int = 4;
      
      public static const const_291:int = 2;
      
      public static const const_731:int = 4;
      
      public static const const_242:int = 8;
      
      public static const const_725:int = 7;
      
      public static const const_285:int = 3;
      
      public static const const_304:int = 1;
      
      public static const const_203:int = 5;
      
      public static const const_421:int = 12;
      
      public static const const_324:int = 1;
      
      public static const const_540:int = 11;
      
      public static const const_567:int = 3;
      
      public static const const_1661:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_440:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_440 = new Array();
         var_440.push(new Tab(_navigator,const_304,const_421,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_505));
         var_440.push(new Tab(_navigator,const_291,const_324,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_505));
         var_440.push(new Tab(_navigator,const_318,const_540,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_1026));
         var_440.push(new Tab(_navigator,const_285,const_223,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_505));
         var_440.push(new Tab(_navigator,const_203,const_242,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_677));
         setSelectedTab(const_304);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_440)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_440)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_440)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_318;
      }
      
      public function get tabs() : Array
      {
         return var_440;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
