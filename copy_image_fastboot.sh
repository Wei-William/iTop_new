#!/bin/bash 

if [ ! -f u-boot-2017.11/u-boot/u-boot-iTOP-4412.bin ]
then 
	echo "cannot find u-boot-iTOP-4412.bin !!!"
else
	cp u-boot-2017.11/u-boot/u-boot-iTOP-4412.bin /mnt/hgfs/fastboot/
	echo "copy u-boot-iTOP-4412.bin to fastboot succeed !!!"
fi

if [ ! -f linux-4.14.2_iTop-4412_scp/arch/arm/boot/uImage ]
then 
	echo "cannot find uImage !!!"
else
	cp linux-4.14.2_iTop-4412_scp/arch/arm/boot/uImage /mnt/hgfs/fastboot/
	echo "copy uImage to fastboot succeed !!!"
fi


if [ ! -f linux-4.14.2_iTop-4412_scp/arch/arm/boot/dts/exynos4412-itop-elite.dtb ]
then 
	echo "cannot find exynos4412-itop-elite.dtb !!!"
else
	cp linux-4.14.2_iTop-4412_scp/arch/arm/boot/dts/exynos4412-itop-elite.dtb /mnt/hgfs/fastboot/
	echo "copy exynos4412-itop-elite.dtb to fastboot succeed !!!"
fi

if [ ! -f system_linux/system.img ]
then
	echo "cannot find system !!!"
else
	cp system_linux/system.img /mnt/hgfs/fastboot/
	echo "copy system.img to fastboot succeed !!!"
fi
