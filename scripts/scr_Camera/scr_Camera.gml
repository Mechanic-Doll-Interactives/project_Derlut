/// @desc Sets the camera behaviour

function scr_Camera()
{
	var _player_distance = point_distance(x, y, obj_Player.x, obj_Player.y);
	// Gets distance between the camera and the player
	
	move_towards_point(obj_Player.x, obj_Player.y, _player_distance * global.camera_speed);
	// Moves the camera towards the player at a given follow speed
}
