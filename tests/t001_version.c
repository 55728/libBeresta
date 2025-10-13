#include "brst.h"
#include <stdio.h>
#include "test_utils.h"

int main(int argc, char** argv) {
    TEST_NAME("t001: Library version");

    printf("%s\n", BRST_Version());
    return 0;
}