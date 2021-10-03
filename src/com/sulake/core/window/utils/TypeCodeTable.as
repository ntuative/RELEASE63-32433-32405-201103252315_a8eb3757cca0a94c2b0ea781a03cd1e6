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
         param1["background"] = const_829;
         param1["bitmap"] = const_714;
         param1["border"] = const_899;
         param1["border_notify"] = const_1458;
         param1["button"] = const_559;
         param1["button_thick"] = const_773;
         param1["button_icon"] = const_1705;
         param1["button_group_left"] = const_759;
         param1["button_group_center"] = const_827;
         param1["button_group_right"] = const_799;
         param1["canvas"] = const_853;
         param1["checkbox"] = const_841;
         param1["closebutton"] = const_1081;
         param1["container"] = const_364;
         param1["container_button"] = const_652;
         param1["display_object_wrapper"] = const_660;
         param1["dropmenu"] = const_548;
         param1["dropmenu_item"] = const_551;
         param1["frame"] = const_411;
         param1["frame_notify"] = const_1447;
         param1["header"] = const_700;
         param1["html"] = const_1131;
         param1["icon"] = const_1170;
         param1["itemgrid"] = const_1239;
         param1["itemgrid_horizontal"] = const_459;
         param1["itemgrid_vertical"] = const_830;
         param1["itemlist"] = const_1203;
         param1["itemlist_horizontal"] = const_359;
         param1["itemlist_vertical"] = const_408;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1669;
         param1["menu"] = const_1476;
         param1["menu_item"] = const_1634;
         param1["submenu"] = const_1227;
         param1["minimizebox"] = const_1446;
         param1["notify"] = const_1720;
         param1["ScrollbarController"] = const_850;
         param1["password"] = const_752;
         param1["radiobutton"] = const_835;
         param1["region"] = const_476;
         param1["restorebox"] = const_1615;
         param1["scaler"] = const_857;
         param1["scaler_horizontal"] = const_1657;
         param1["scaler_vertical"] = const_1713;
         param1["scrollbar_horizontal"] = const_560;
         param1["scrollbar_vertical"] = const_795;
         param1["scrollbar_slider_button_up"] = const_1253;
         param1["scrollbar_slider_button_down"] = const_1197;
         param1["scrollbar_slider_button_left"] = const_1222;
         param1["scrollbar_slider_button_right"] = const_1085;
         param1["scrollbar_slider_bar_horizontal"] = const_1144;
         param1["scrollbar_slider_bar_vertical"] = const_1140;
         param1["scrollbar_slider_track_horizontal"] = const_1240;
         param1["scrollbar_slider_track_vertical"] = const_1259;
         param1["scrollable_itemlist"] = const_1731;
         param1["scrollable_itemlist_vertical"] = const_574;
         param1["scrollable_itemlist_horizontal"] = const_1158;
         param1["selector"] = const_761;
         param1["selector_list"] = const_634;
         param1["submenu"] = const_1227;
         param1["tab_button"] = const_486;
         param1["tab_container_button"] = const_1223;
         param1["tab_context"] = const_443;
         param1["tab_content"] = const_1183;
         param1["tab_selector"] = const_908;
         param1["text"] = const_485;
         param1["input"] = const_737;
         param1["toolbar"] = const_1645;
         param1["tooltip"] = const_347;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
