uxnemu = uxncli
uxnasm = uxnasm

all: literals arithmetic stack jumps memory

literals:
	uxnasm literals.tal literals.rom

arithmetic:
	uxnasm arithmetic.tal arithmetic.rom

stack:
	uxnasm stack.tal stack.rom

jumps:
	uxnasm jumps.tal jumps.rom

memory:
	uxnasm memory.tal memory.rom

run: all
	$(foreach file, $(wildcard ./*.rom), $(uxnemu) $(file) < /dev/null | xxd -p ;)
