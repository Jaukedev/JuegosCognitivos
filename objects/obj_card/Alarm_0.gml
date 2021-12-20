/// @description Flip the card back

// Consider this card and the other opened card are not flipped
flipped = false;
obj_controller_Memo.last_tile.flipped = false;

// Triger flipping back animation to this and to other open card
is_flipping_back = true;
obj_controller_Memo.last_tile.is_flipping_back = true;

// update the vars that all playable cards are flipped back
obj_controller_Memo.flipped_tiles = 0;
obj_controller_Memo.last_tile = "null";