///@description Cards shuffling and positioning 


//----------------- Create array of tiles (cards)

// The total number of cards is cards*2 (pairs)
// The -1 is to exclude the sprite at index 0, which is the back side of the cards
var number;
if global.level = 1 number = 5
if global.level = 2 number = 7
if global.level = 3 number = sprite_get_number(spr_card);

var number_of_tiles = (number - 1) * 2;
var tiles;

for (var i = 0; i < number_of_tiles; i++)
{
	// +1 in the array values, 0 is reserved for the back side of the cards
	tiles[i] = floor(i / 2) + 1;
}

show_debug_message("Tiles: " + string(tiles));


//------------ Randomize array of tiles
randomize();

// calculation of how many columns will fit in 4 rows
var tiles_per_row = number_of_tiles div 4;

// Fisher–Yates shuffle algorithm
//For more info about the algorithm : https://en.wikipedia.org/wiki/Fisher%E2%80%93Yates_shuffle
var swap = 0;
var tmp = 0;

for(i = number_of_tiles - 1; i > 0; i--)
{
	//shuffle
	swap = floor(random(i));
	tmp = tiles[i];
	tiles[i] = tiles[swap];
	tiles[swap] = tmp;
}

show_debug_message("Shuffled tiles: " + string(tiles));


//---------------- Tiles intanciation & positioning

var spacing = 25;
var xx;
var yy;
var card;
var leftpadding = room_width/2 - (tiles_per_row*25 + tiles_per_row *160)/2;
var toppadding = room_height/2 - (4*25 + 4*160)/2;

for(i = 0; i < number_of_tiles; i++)
{

	//positioning
	xx = leftpadding + sprite_width / 2 + spacing + (sprite_width + spacing)  * (i mod tiles_per_row);
	yy = toppadding +  sprite_height / 2 + spacing + (sprite_height + spacing) * floor(i / tiles_per_row);
	
	//intanciation
	card = instance_create_layer(xx, yy, "Cards", obj_card);
	
	// provide an id, to know which card is when flipped
	card.type = tiles[i]; 

}

//--------------- Initial instance variables

// The amound of pairs that must be found in order to win
// and the stored progress, how many pairs found so far
total_matches = number_of_tiles / 2;
matches_found = 0;

/////variables tiempo de reaccion 
tiempo_respuesta = 0;
tiempo_pivote = 0;
tiempo_delta = 0 


global.gameTitle = "Encontrar pareja";

global.intento = 0;

// Control of player's flipping pace
can_flip = true;
flipped_tiles = 0;

//The last flipped card
last_tile = "null";


