if (gamepad_button_check(1, gp_padr)){
	x+= 5;
}

if (gamepad_button_check(1, gp_padu)){
	y -=5;
}

if (gamepad_button_check(1, gp_padl)){
	x -=5;
}

if (gamepad_button_check(1, gp_padd)){
	y +=5;
}

if (gamepad_button_check_pressed(1, gp_face1)){
	x = 500;
}

if (gamepad_button_check_released(1, gp_face1)){
	y = 500;
}

