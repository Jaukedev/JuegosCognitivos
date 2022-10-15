///@description Cards shuffling and positioning 


//----------------- Create array of tiles (cards)

// The total number of cards is cards*2 (pairs)
// The -1 is to exclude the sprite at index 0, which is the back side of the cards

if global.level = 1 number = 6
if global.level = 2 number = 9
if global.level = 3 number = 15

var number_of_tiles = number;
var tiles;

for (var i = 0; i < number_of_tiles; i++)
{
	// +1 in the array values, 0 is reserved for the back side of the cards
	tiles[i] = floor(i) ;
}

show_debug_message("Tiles: " + string(tiles));


//------------ Randomize array of tiles
randomize();

// calculation of how many columns will fit in 4 rows

var tiles_per_row = number_of_tiles div 3;

// Fisher–Yates shuffle algorithm
//For more info about the algorithm : https://en.wikipedia.org/wiki/Fisher%E2%80%93Yates_shuffle
var swap = 0;
var tmp = 0;

for(var i = number_of_tiles - 1 ; i >= 0; i--)
{
	//shuffle
	
	swap = floor(random(i));
	tmp = tiles[i];
	tiles[i] = tiles[swap];
	tiles[swap] = tmp;
}

show_debug_message("Shuffled tiles: " + string(tiles));


//---------------- Tiles intanciation & positioning

var spacing = 200;
var xx;
var yy;
var card;
var leftpadding = room_width/2 - ((tiles_per_row*70 + tiles_per_row *160)/2);
var toppadding = room_height/2 - (3*60 + 3*160)/2;

sequence_ = tiles;
inst_sequence = 0;
for(var i = number_of_tiles-1; i >= 0; i--)
{
	//shuffle
	swap = floor(random(i));
	tmp = sequence_[i];
	sequence_[i] = sequence_[swap];
	sequence_[swap] = tmp;
}
show_debug_message("Sequence: " + string(sequence_));
for(var i = 0; i < number_of_tiles; i++)
{

	//positioning
	xx = leftpadding + sprite_width / 2 + spacing + (sprite_width + spacing)  * (i mod tiles_per_row);
	yy = toppadding +  sprite_height / 2 + spacing + (sprite_height + spacing) * floor(i / tiles_per_row);
	
	//intanciation
	card = instance_create_layer(xx, yy, "Circles", obj_circle);
	
	// provide an id, to know which card is when flipped
	card.image_index = tiles[i]; 
	show_debug_message("Sequence-id: " + string(sequence_[i]));
	card.id_ = i;
	inst_sequence[i] = card;

}
show_debug_message("Sequence instances: " + string(inst_sequence));
//--------------- Initial instance variables

// The amound of pairs that must be found in order to win
// and the stored progress, how many pairs found so far
ac_sequence = 1;
max_sequence = number_of_tiles;
ac_recording = 0;
errors = 0;
time = 0;
playing = true;
recording = false;
var swap = 0;
var tmp = 0;
var i;



show_debug_message("Sequence: " + string(sequence_));
alarm[1] = room_speed;


tiempo_respuesta = 0;
tiempo_pivote = 0;
tiempo_delta = 0
bandera_puede_contar = false;

global.gameTitle = "Seguir la secuencia";
global.intento = 0;
