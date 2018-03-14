#!/bin/sh

# git am ../patch/0001-Test-vexpress-only.patch
git am ../patch/0001-vexpress_ca15_tc2_defconfig-build-EFI.patch

# Fix building u-boot.rom for qemu-x86_64_defconfig
git am ../patch/0001-spl-u-boot-spl-nodtb.bin-remove-.got-and-.got.plt-se.patch

# Support EFI block device on BananaPi
git am ../patch/0001-mmc-sunxi-support-cd-inverted.patch
git am ../patch/0001-configs-sunxi-enable-BLK-DM_MMC-for-Bananapi.patch

# Various fixes
git am ../patch/0001-ubifs-avoid-possible-NULL-dereference.patch
git am ../patch/0001-mmc-meson_gx_mmc-avoid-division-by-zero.patch
git am ../patch/0001-fs-fat-avoid-useless-conversion-when-calling-get_clu.patch
git am ../patch/0001-fs-fat-avoid-superfluous-conversion-calling-set_clus.patch
git am ../patch/0001-net-mvpp2x-add-check-after-calloc.patch
git am ../patch/0001-wandboard-remove-superfluous-include.patch
git am ../patch/0001-MAINTAINERS-ARM-FREESCALE-IMX-remove-invalid-path.patch
git am ../patch/0001-MAINTAINERS-ARM-HISILICON-correct-maintained-path.patch
git am ../patch/0001-MAINTAINERS-FLATTENED-DEVICE-TREE-correct-maintained.patch
git am ../patch/0001-MAINTAINERS-ARM-SAMSUNG-remove-invalid-paths.patch
git am ../patch/0001-MAINTAINERS-ARM-TI-remove-invalid-paths.patch
git am ../patch/0001-MAINTAINERS-TI-SYSTEM-SECURITY-remove-invalid-file.patch

# Video console
git am ../patch/0001-video-if-EFI_LOADER-is-enabled-enable-CFB_CONSOLE_AN.patch

# USB keyboard
git am ../patch/0001-usb-proper-error-handling-for-circular-buffer.patch
git am ../patch/0001-usb-kbd-allow-multibyte-sequences-to-be-put-into-rin.patch
git am ../patch/0001-usb-kbd-implement-special-keys.patch

# diverse protocols
git am ../patch/0001-efi_loader-efi_allocate_pages-is-too-restrictive.patch

# From Simon's Sandbox support series
git am ../patch/0001-efi-Add-a-TODO-to-efi_init_obj_list.patch # rebased

# graphical output protocol
git am ../patch/0001-efi_loader-correctly-support-parameter-delta-in-Blt.patch

exit
# From Simon's Sandbox support series
git am ../patch/0001-sandbox-set-available-memory-address.patch
git am ../patch/0001-efi-sandbox-Adjust-memory-usage-for-sandbox.patch # no change
git am ../patch/0001-sandbox-smbios-Update-to-support-sandbox.patch # no change
git am ../patch/0001-sandbox-Add-a-setjmp-implementation.patch # no change
git am ../patch/0001-efi-sandbox-Add-required-linker-sections.patch # no change
git am ../patch/0001-efi-sandbox-add-distroboot-support.patch
git am ../patch/0001-Define-board_quiesce_devices-in-a-shared-location.patch
git am ../patch/0001-Add-a-comment-for-board_quiesce_devices.patch # no change
git am ../patch/0001-efi-sandbox-Add-relocation-constants.patch # no change
git am ../patch/0001-efi-sandbox-no-support-for-DHCP-EFI-boot.patch
git am ../patch/0001-efi_selftest-cannot-launch-EFI-binary-in-sandbox.patch
git am ../patch/0001-sandbox-alignment-of-memory.patch
git am ../patch/0001-efi-sandbox-Enable-EFI-loader-builder-for-sandbox.patch # rebased

# To be reworked
# git am ../patch/0001-efi_loader-memory-reservations-according-to-e820-tab.patch

# git am ../patch/0001-efi_loader-clean-up-efi_exit.patch
# git am ../patch/0001-efi_loader-correct-return-types-do_bootefi_exec.patch
# git am ../patch/0001-efi_loader-call-efi_setup_loaded_image-first.patch

# Work in progress
# git am ../patch/0001-efi_loader-debug-print-memory-map.patch
# git am ../patch/0001-efi_loader-Exit-must-remove-loaded-image-handle.patch
# git am ../patch/0001-efi_loader-allow-multiple-source-files-for-EFI-apps.patch
