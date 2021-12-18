#include <stdint.h>
#include "splitmix64.h"

void show_splitmix64 (const uint64_t value)
{
	x = value;
	printf( " %21.20ld %21.20ld\n" , value , next() );
}
