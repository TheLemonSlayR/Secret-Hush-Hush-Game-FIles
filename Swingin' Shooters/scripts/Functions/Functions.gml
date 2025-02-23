function draw_Weapon()
{
	var _xOffset = lengthdir_x(weaponOffsetDist, aimDir);
	var _yOffset = lengthdir_y(weaponOffsetDist, aimDir);
	
	var _weaponYscl = 1; 
	if aimDir > 90 && aimDir < 270
	{
		_weaponYscl = -1;
	}

	draw_sprite_ext(RustyPistol, 0, x + _xOffset, centerY + _yOffset, 1.5, _weaponYscl, aimDir, c_white, 1);
}