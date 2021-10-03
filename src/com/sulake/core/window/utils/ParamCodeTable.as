package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_128;
         param1["bound_to_parent_rect"] = const_92;
         param1["child_window"] = const_912;
         param1["embedded_controller"] = const_333;
         param1["resize_to_accommodate_children"] = const_68;
         param1["input_event_processor"] = const_50;
         param1["internal_event_handling"] = const_555;
         param1["mouse_dragging_target"] = const_236;
         param1["mouse_dragging_trigger"] = const_359;
         param1["mouse_scaling_target"] = const_286;
         param1["mouse_scaling_trigger"] = const_458;
         param1["horizontal_mouse_scaling_trigger"] = const_224;
         param1["vertical_mouse_scaling_trigger"] = const_248;
         param1["observe_parent_input_events"] = const_996;
         param1["optimize_region_to_layout_size"] = const_457;
         param1["parent_window"] = const_855;
         param1["relative_horizontal_scale_center"] = const_186;
         param1["relative_horizontal_scale_fixed"] = const_125;
         param1["relative_horizontal_scale_move"] = const_351;
         param1["relative_horizontal_scale_strech"] = const_283;
         param1["relative_scale_center"] = const_1049;
         param1["relative_scale_fixed"] = const_734;
         param1["relative_scale_move"] = const_1010;
         param1["relative_scale_strech"] = const_827;
         param1["relative_vertical_scale_center"] = const_163;
         param1["relative_vertical_scale_fixed"] = const_134;
         param1["relative_vertical_scale_move"] = const_343;
         param1["relative_vertical_scale_strech"] = const_277;
         param1["on_resize_align_left"] = const_600;
         param1["on_resize_align_right"] = const_489;
         param1["on_resize_align_center"] = const_493;
         param1["on_resize_align_top"] = const_549;
         param1["on_resize_align_bottom"] = const_467;
         param1["on_resize_align_middle"] = const_474;
         param1["on_accommodate_align_left"] = const_965;
         param1["on_accommodate_align_right"] = const_387;
         param1["on_accommodate_align_center"] = const_627;
         param1["on_accommodate_align_top"] = const_901;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_706;
         param1["route_input_events_to_parent"] = const_407;
         param1["use_parent_graphic_context"] = const_36;
         param1["draggable_with_mouse"] = const_950;
         param1["scalable_with_mouse"] = const_985;
         param1["reflect_horizontal_resize_to_parent"] = const_501;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_260;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
