uxnemu = uxncli
uxnasm = uxnasm

all: literals arithmetic stack

literals:
	uxnasm literals.tal literals.rom

arithmetic:
	uxnasm arithmetic.tal arithmetic.rom

stack:
	uxnasm stack.tal stack.rom

run: all
	$(foreach file, $(wildcard ./*.rom), $(uxnemu) $(file) < /dev/null | xxd -p ;)
