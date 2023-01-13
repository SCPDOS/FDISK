fdisk:
	nasm fdisk.asm -o ./Binaries/FDISK.COM -f bin -l ./Listings/fdisk.lst -O0v
	cat ./Binaries/mbr.bin >> ./Binaries/FDISK.COM
