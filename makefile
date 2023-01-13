#!/bin/sh

fdisk:
	nasm fdisk.asm -o ./Binaries/FDISK.COM -f bin -l ./Listings/fdisk.lst -O0v
	cat ./Binaries/mbr.bin >> ./Binaries/FDISK.COM

all:
	nasm fdisk.asm -o ./Binaries/FDISK.COM -f bin -l ./Listings/fdisk.lst -O0v
	nasm ./Source/Boot/mbr.asm -o ./Binaries/mbr.bin -f bin -l ./Listings/mbr.lst -O0v
	cat ./Binaries/mbr.bin >> ./Binaries/FDISK.COM

mbr:
	nasm ./Source/Boot/mbr.asm -o ./Binaries/mbr.bin -f bin -l ./Listings/mbr.lst -O0v