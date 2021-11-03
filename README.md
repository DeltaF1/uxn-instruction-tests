# Test suite for the Uxn cpu instruction set

WIP test programs to help catch implementation errors when porting the Uxn virtual CPU spec. Each program contains the expected program output (as executed on the reference C implementation of Uxn/Varvara) as a string so it's readable in the compiled .rom files as well.

Edit testheader.tal to change the output method. By default it writes raw result bytes to the console device, but this can be disabled to just leave values on the stack if the implementation doesn't have device output yet.

Run `make run` to build the uxn programs, run them, and hexdump the output. Then you can compare the output to the expected outputs in each file.
