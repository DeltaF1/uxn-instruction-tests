# ! This repo is very out of date and I have not kept it up to date with any changes to the spec since February 2022 !
I have lost interest in this project and am unlikely to update it any time soon. The instruction set itself has changed and I believe there have been lots of changes to various devices in the interim. Take everything here with a grain of salt.

# Test suite for the Uxn cpu instruction set

WIP test programs to help catch implementation errors when porting the Uxn virtual CPU spec. Each program contains the expected program output (as executed on the reference C implementation of Uxn/Varvara) as a hexdump string so it's easily readable in the compiled .rom files as well.

Some files have ASCII characters as markers embedded in the expected output to help diagnose which instruction has a problem (e.g. arithmetic.tal outputs `+`, `-`, `/`, etc. before each section of tests.

Edit testheader.tal to change the output method. By default it writes raw result bytes to the console device, but this can be disabled to just leave values on the stack if the implementation doesn't have device output yet.

## How to test your own emulator

### Emulator with CLI access
1. Edit the Makefile and change `uxnemu` to point to your emulator
2. Run `make run` to build the uxn programs, run them, and hexdump the output. Then compare the output to the "expected" string for each rom.

### Emulator with its own console device
1. Load each rom into your emulator
2. Copy output of console device and compare with the "expected" string for that rom

### Emulator without CLI access or console device
1. Edit testheader.tal to redefine OUT/OUT2/OUTr as null operations
2. Load each rom into your emulator
3. Run the rom to completion
4. Copy the contents of the working stack and compare with the "expected" string for that rom
