/// @description Flipping animation

// Check if animation is about to play
if(!is_flipping_back and !is_flipping) exit;

// No other flipping animations while this animation plays
obj_controller_Memo.can_flip = false;

// Scaling the x scale with trig to give illusion of 3d flip
sin_value += (pi * 2) / animation_steps;
if (sin_value >= pi *2) sin_value = 0;
image_xscale = sin(sin_value);

// When flipping
if(is_flipping)
{
	// keep the old sprite until image_xscale >= 0
	image_index = 0;
	
	// and change to apropriate sprite for the illusion of flipping
	if(image_xscale >= 0) image_index = sprite_to_change;
	
	// when animation is finished
	if(image_xscale == 1) 
	{
		// Reset animation values
		is_flipping = false;
		sin_value = 0;
		// allow back, other flipping animations 
		obj_controller_Memo.can_flip = true;
		// and exit this step
		exit;
	}
}
// if is flipping back (to show the back side of the card)
else 
{
	// keep the old sprite until image_xscale >= 0
	image_index = sprite_to_change;
	
	// and change back to sprite of the card back side, for the illusion of flipping
	if(image_xscale >= 0) image_index = 0;
	
	// when animation is finished
	if(image_xscale == 1) 
	{
		// Reset animation values
		is_flipping_back = false;
		sin_value = 0;
		// allow back, other flipping animations 
		obj_controller_Memo.can_flip = true;
		// and exit this step
		exit;
	}
}
	