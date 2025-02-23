//get inputs
	rightKey = keyboard_check( ord( "D" ) );
	leftKey = keyboard_check( ord( "A" ) );
	upKey = keyboard_check( ord( "W" ) );
	downKey = keyboard_check( ord( "S" ) );



//player gets movin'
#region
	//get the direction
	var _horizKey = rightKey - leftKey;
	var _vertKey = downKey - upKey;
	moveDir = point_direction( 0, 0, _horizKey, _vertKey );
	
	//x and y speeds
	var _spd = 0;
	var _inputLevel = point_distance( 0, 0, _horizKey, _vertKey ); 
	_inputLevel = clamp( _inputLevel, 0, 1);
	_spd = moveSpd * _inputLevel; 
	
	xspd = lengthdir_x( _spd, moveDir );
	yspd = lengthdir_y( _spd, moveDir );
	
	//hehe character go bonk
	if place_meeting( x + xspd, y, OWall)
	{
		xspd = 0
	}
	if place_meeting( x, y + yspd, OWall)
	{
		yspd = 0
	}
	
	//hehe character go zoom
	x += xspd;
	y += yspd;
	
	depth = -bbox_bottom;
	
#endregion

//Aiming
	centerY = y + centerYOffset;
	
	aimDir = point_direction(x, centerY, mouse_x, mouse_y);


//Sprite Control
#region
	face = round(aimDir/180);
	if face == 2 {face = 0};
	
	if xspd == 0 && yspd == 0
	{
		image_index = 0;
	}
	sprite_index = sprite[face];
#endregion


