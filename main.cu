#include "includes.h"
#define SIZE 512
#define CHANNEL 3
// Main function
int main(){
	char* _filename = "lena.bmp";
	char* _filename_2 = "lena_out_1.bmp";
	// Basic usage (see HDR discussion below for HDR usage):
	//    int x,y,n;
	//    unsigned char *data = stbi_load(filename, &x, &y, &n, 0);
	//    // ... process data if not NULL ...
	//    // ... x = width, y = height, n = # 8-bit components per pixel ...
	//    // ... replace '0' with '1'..'4' to force that many components per pixel
	//    // ... but 'n' will always be the number that it would have been if you said 0
	//    stbi_image_free(data)
	//
	// Standard parameters:
	//    int *x                 -- outputs image width in pixels
	//    int *y                 -- outputs image height in pixels
	//    int *channels_in_file  -- outputs # of image components in image file
	//    int desired_channels   -- if non-zero, # of image components requested in result
	//
	int x, y, z;
	unsigned char *input_data = stbi_load(_filename, &x, &y, &z, 0);
	//int stbi_write_bmp(char const *filename, int w, int h, int comp, const void *data);
	int write = stbi_write_bmp(_filename_2, SIZE, SIZE, CHANNEL, input_data);
	printf("The output is ? %i \n", write);
	stbi_image_free(input_data);




	return 0;
};