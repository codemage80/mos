BITS 16
ORG 0x0000

_0x000:								; START OF BOOT SECTOR
	%include "structures/boot.a"

_0x00B:								; DOS 2.0 FAT12 STRUCTURE
	%include "structures/dos20.a"

_0x018:								; DOS 3.31 BPB Extensions
	%include "structures/dos331.a"	

_0x024:								; DOS 7.1 BPB Extensions
	%include "structures/dos71.a"



	
