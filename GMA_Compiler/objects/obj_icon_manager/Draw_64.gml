//draw icon
draw_sprite(global.iconspr,0,global.btn_select_x+300,global.btn_select_y+50);


var btn_sel_hover = point_in_rectangle(mouse_x, mouse_y, 
    global.btn_select_x+300, global.btn_select_y, 
    global.btn_select_x+300 + global.btn_select_w, 
    global.btn_select_y + global.btn_select_h);


draw_set_color(btn_sel_hover ? c_white : c_black);
draw_roundrect(global.btn_select_x+300, global.btn_select_y,
               global.btn_select_x+300 + global.btn_select_w,
               global.btn_select_y + global.btn_select_h, false);
			   
draw_set_color(btn_sel_hover ? c_black : c_white);
draw_roundrect(global.btn_select_x+300, global.btn_select_y, 
               global.btn_select_x+300 + global.btn_select_w, 
               global.btn_select_y + global.btn_select_h, true);
			   

draw_set_color(btn_sel_hover ? c_black : c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(global.btn_select_x+300 + global.btn_select_w/2, 
          global.btn_select_y + global.btn_select_h/2, 
          "Add Icon");
		  

if (btn_sel_hover && mouse_check_button_pressed(mb_left)) {
	global.iconpath = get_open_filename("3ds Icon|*.png", "");
	global.iconspr = sprite_add(global.iconpath, 0, false, false, 0, 0);
}