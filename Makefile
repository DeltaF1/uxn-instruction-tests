uxnemu = uxncli
uxnasm = uxnasm

all: literals arithmetic

literals:
	uxnasm literals.tal literals.rom

arithmetic:
	uxnasm arithmetic.tal arithmetic.rom

run: all
	$(foreach file, $(wildcard ./*.rom), $(uxnemu) $(file) < /dev/null | xxd -p ;)
