#include "b.h"

#include <b-impl.h>
#include <c.h>
#include <d.h>

#include <stdio.h>


void b()
{
    b_impl();
    printf("the answer (from c) is %d\n", THE_ANSWER);
    d();
}
