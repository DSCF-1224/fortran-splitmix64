#include <limits.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "test.h"

int main (void)
{
	show_splitmix64( 0 );

	for (uint64_t i = 0; i < sizeof(uint64_t) * CHAR_BIT; i++)
	{
		show_splitmix64( (uint64_t)(1) << i );
	}

	show_splitmix64( UINT64_MAX );

	return EXIT_SUCCESS;
}
