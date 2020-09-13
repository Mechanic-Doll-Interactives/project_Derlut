/// @desc Executes player's movement

function scr_PlayerMovement()
{
	// Direction

	var _h_mov = 0;		// Horizontal movement
	var _v_mov = 0;		// Vertical movement

	// Input checking

	if keyboard_check(MOVE_RIGHT) == true
	{
		_h_mov += 1;
	}

	if keyboard_check(MOVE_UP) == true
	{
		_v_mov -= 1;
	}

	if keyboard_check(MOVE_LEFT) == true
	{
		_h_mov -= 1;
	}

	if keyboard_check(MOVE_DOWN) == true
	{
		_v_mov += 1;
	}
	
	direction = point_direction(0, 0, _h_mov, _v_mov);		// Returns and sets the movement angle

	// Speed

	if _h_mov != 0 || _v_mov != 0
	{
		speed = global.player_speed;		// Sets movement based on player's speed
	}
	else
	{
		speed = 0;		// Sets the movement speed to 0 when there's no input
	}
}
