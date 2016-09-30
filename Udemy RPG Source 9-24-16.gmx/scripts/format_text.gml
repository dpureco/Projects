///format_text(text_array, width, font)
/*
    This function takes a text array and a font. It loops through the
    text and inserts returns if the text is wider than the width.
*/

var text = argument0;
var width = argument1;
var font = argument2;

// Set the font
draw_set_font(font);

// Get the number of pages
var array_size = array_length_1d(text);
var last_space = 0;

// Loop through the pages
for (i=0; i<array_size; i++) {
    // Set count
    var count = 0;

    // Loop through the text
    var char = string_char_at(text[@ i], count);
    while (char != "") {
        var str = string_copy(text[i], 1, count);
        var str_width = string_width(str);
        
        // Update last space
        if (char == " ") last_space = count;
        
        // Check the width
        if (str_width > width) {
            // Remove the space
            text[@ i] = string_delete(text[i], last_space, 1);
            
            // Add a return
            text[@ i] = string_insert("#", text[i], last_space);
        }
        
        // Increment count
        count++;
        char = string_char_at(text[@ i], count);
    }
}

return text;
