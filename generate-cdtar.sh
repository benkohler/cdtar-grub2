set -x
cd cdtar-*
grub-mkstandalone /boot/grub/grub.cfg=../grub-stub.cfg --compress=xz -O x86_64-efi -o ./boot/EFI/BOOT/BOOTX64.EFI --themes=
tar cjf ../isolinux-memtest86+-grub2efi-cdtar.tar.bz2 *
cd -
