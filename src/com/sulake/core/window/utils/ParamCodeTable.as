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
         param1["ScrollbarController"] = const_186;
         param1["bound_to_parent_rect"] = const_94;
         param1["child_window"] = const_1124;
         param1["embedded_controller"] = const_1066;
         param1["resize_to_accommodate_children"] = const_65;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_874;
         param1["mouse_dragging_target"] = const_267;
         param1["mouse_dragging_trigger"] = const_369;
         param1["mouse_scaling_target"] = const_324;
         param1["mouse_scaling_trigger"] = const_555;
         param1["horizontal_mouse_scaling_trigger"] = const_225;
         param1["vertical_mouse_scaling_trigger"] = const_270;
         param1["observe_parent_input_events"] = const_1110;
         param1["optimize_region_to_layout_size"] = const_442;
         param1["parent_window"] = const_1089;
         param1["relative_horizontal_scale_center"] = const_175;
         param1["relative_horizontal_scale_fixed"] = const_145;
         param1["relative_horizontal_scale_move"] = const_412;
         param1["relative_horizontal_scale_strech"] = const_349;
         param1["relative_scale_center"] = const_1180;
         param1["relative_scale_fixed"] = const_708;
         param1["relative_scale_move"] = const_1228;
         param1["relative_scale_strech"] = const_1032;
         param1["relative_vertical_scale_center"] = const_194;
         param1["relative_vertical_scale_fixed"] = const_146;
         param1["relative_vertical_scale_move"] = const_227;
         param1["relative_vertical_scale_strech"] = const_334;
         param1["on_resize_align_left"] = const_878;
         param1["on_resize_align_right"] = const_567;
         param1["on_resize_align_center"] = const_557;
         param1["on_resize_align_top"] = const_687;
         param1["on_resize_align_bottom"] = const_491;
         param1["on_resize_align_middle"] = const_471;
         param1["on_accommodate_align_left"] = const_1035;
         param1["on_accommodate_align_right"] = const_572;
         param1["on_accommodate_align_center"] = const_879;
         param1["on_accommodate_align_top"] = const_1245;
         param1["on_accommodate_align_bottom"] = const_488;
         param1["on_accommodate_align_middle"] = const_848;
         param1["route_input_events_to_parent"] = const_569;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1067;
         param1["scalable_with_mouse"] = const_1042;
         param1["reflect_horizontal_resize_to_parent"] = const_522;
         param1["reflect_vertical_resize_to_parent"] = const_594;
         param1["reflect_resize_to_parent"] = const_291;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1041;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
