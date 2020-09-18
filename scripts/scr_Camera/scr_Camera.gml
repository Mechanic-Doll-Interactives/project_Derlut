/// @desc Sets the camera behaviour

function scr_Camera()
{
	// Gets distance between the camera and the player
	var _player_distance = point_distance(x, y, obj_Player.x, obj_Player.y);
	
	// Moves the camera towards the player at a given follow speed
	move_towards_point(obj_Player.x, obj_Player.y, _player_distance * global.camera_speed);
}
