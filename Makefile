all: clean iso

clean:
	rm -rf tmp/* out/*

iso:
	mkarchiso -v -w tmp .

bios:
	run_archiso -i $(shell ls -1t out/*.iso)

uefi:
	run_archiso -u -i $(shell ls -1t out/*.iso)
