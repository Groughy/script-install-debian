#!/usr/bin/bash

# Let's Go !! #################################################


sudo virt-install \
	--name deb2 \
	--vcpus=2 \
	--ram=4096 \
	--location=/home/journiac/Téléchargements/debian-12.5.0-amd64-netinst.iso \
	--initrd-inject=preseed.cfg \
	--extra-args="auto console=ttyS0,115200n8 serial" \
	--graphics none \
	--console pty,target_type=serial \
	--extra-args="ks=file:/preseed.cfg" \
	--network default,model=virtio \
	--os-variant=debian12 \
	--disk=pool=default,size=20,format=qcow2,bus=virtio
