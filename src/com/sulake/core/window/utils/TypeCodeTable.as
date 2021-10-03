package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_583;
         param1["bitmap"] = const_581;
         param1["border"] = const_757;
         param1["border_notify"] = const_1219;
         param1["button"] = const_420;
         param1["button_thick"] = const_721;
         param1["button_icon"] = const_1342;
         param1["button_group_left"] = const_630;
         param1["button_group_center"] = const_647;
         param1["button_group_right"] = const_691;
         param1["canvas"] = const_688;
         param1["checkbox"] = const_747;
         param1["closebutton"] = const_1029;
         param1["container"] = const_350;
         param1["container_button"] = const_644;
         param1["display_object_wrapper"] = const_639;
         param1["dropmenu"] = const_448;
         param1["dropmenu_item"] = const_432;
         param1["frame"] = const_348;
         param1["frame_notify"] = const_1280;
         param1["header"] = const_661;
         param1["icon"] = const_846;
         param1["itemgrid"] = const_892;
         param1["itemgrid_horizontal"] = const_414;
         param1["itemgrid_vertical"] = const_611;
         param1["itemlist"] = const_1034;
         param1["itemlist_horizontal"] = const_361;
         param1["itemlist_vertical"] = const_332;
         param1["maximizebox"] = const_1216;
         param1["menu"] = WINDOW_TYPE_MENU;
         param1["menu_item"] = const_1215;
         param1["submenu"] = const_990;
         param1["minimizebox"] = const_1364;
         param1["notify"] = const_1256;
         param1["null"] = const_697;
         param1["password"] = const_730;
         param1["radiobutton"] = const_565;
         param1["region"] = const_506;
         param1["restorebox"] = const_1404;
         param1["scaler"] = const_660;
         param1["scaler_horizontal"] = const_1178;
         param1["scaler_vertical"] = const_1318;
         param1["scrollbar_horizontal"] = const_395;
         param1["scrollbar_vertical"] = const_713;
         param1["scrollbar_slider_button_up"] = const_839;
         param1["scrollbar_slider_button_down"] = const_905;
         param1["scrollbar_slider_button_left"] = const_884;
         param1["scrollbar_slider_button_right"] = const_1020;
         param1["scrollbar_slider_bar_horizontal"] = const_964;
         param1["scrollbar_slider_bar_vertical"] = const_995;
         param1["scrollbar_slider_track_horizontal"] = const_830;
         param1["scrollbar_slider_track_vertical"] = const_1036;
         param1["scrollable_itemlist"] = const_1386;
         param1["scrollable_itemlist_vertical"] = const_499;
         param1["scrollable_itemlist_horizontal"] = const_850;
         param1["selector"] = const_722;
         param1["selector_list"] = const_633;
         param1["submenu"] = const_990;
         param1["tab_button"] = const_684;
         param1["tab_container_button"] = const_870;
         param1["tab_context"] = WINDOW_TYPE_TAB_CONTEXT;
         param1["tab_content"] = const_1051;
         param1["tab_selector"] = const_603;
         param1["text"] = const_529;
         param1["input"] = const_668;
         param1["toolbar"] = const_1353;
         param1["tooltip"] = const_331;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
