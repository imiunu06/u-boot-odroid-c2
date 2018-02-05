#!/bin/sh
# EFI for v2018.03
## Accepted by Alex
git am ../patch/0001-efi_loader-fix-building-crt0-on-arm.patch
git am ../patch/0001-efi_loader-fix-the-online-help-for-bootefi-bootmgr.patch
## Open
git am ../patch/0001-efi_selftest-use-correct-compiler-flags-for-miniapps.patch
git am ../patch/0001-efi_loader-add-missing-runtime-services-stubs.patch
git am ../patch/0001-efi_loader-create-stub-for-CreateEventEx.patch
git am ../patch/0001-efi_driver-return-type-of-efi_driver_init.patch
git am ../patch/0001-efi_loader-add-missing-EFI_RESET_PLATFORM_SPECIFIC.patch

# Support EFI block device on BananaPi
git am ../patch/0001-mmc-sunxi-support-cd-inverted.patch
git am ../patch/0001-configs-sunxi-enable-BLK-DM_MMC-for-Bananapi.patch

git am ../patch/0001-ubifs-avoid-possible-NULL-dereference.patch
git am ../patch/0001-mmc-meson_gx_mmc-avoid-division-by-zero.patch

# git am ../patch/0001-Test-vexpress-only.patch
git am ../patch/0001-vexpress_ca15_tc2_defconfig-build-EFI.patch

# Fix building u-boot.rom for qemu-x86_64_defconfig
git am ../patch/0001-spl-u-boot-spl-nodtb.bin-remove-.got-and-.got.plt-se.patch

git am ../patch/0001-rockchip-gpio-remove-dead-code.patch
git am ../patch/0001-i2c-mvtwsi.c-Avoid-NULL-dereference.patch

# Rebasing needed
# git am ../patch/0001-efi_loader-use-built-in-device-tree-in-bootefi-comma.patch
# git am ../patch/0001-efi_selftest-check-installation-of-the-device-tree.patch

git am ../patch/0001-dm-video-show-correct-colors-in-graphical-console.patch
git am ../patch/0001-dm-video-correctly-clean-background-in-16bit-mode.patch
git am ../patch/0001-dm-video-use-constants-to-refer-to-colors.patch
git am ../patch/0001-dm-video-support-increased-intensity-bold.patch

git am ../patch/0001-efi_loader-remove-deprecated-ConsoleControlProtocol.patch
git am ../patch/0001-efi_loader-split-README.efi-into-two-separate-docume.patch
git am ../patch/0001-efi_loader-rewrite-README.efi.patch

# From Simon's Sandbox support series
git am ../patch/0001-efi_loader-simplify-calling-efi_init_obj_list.patch
git am ../patch/0001-efi_loader-efi_smbios_register-should-have-a-return-.patch
git am ../patch/0001-efi_loader-use-constants-in-efi_allocate_pages.patch
git am ../patch/0001-efi_loader-exit-status-for-efi_reset_system_init.patch
git am ../patch/0001-efi-Correct-header-order-in-efi_memory.patch

# From Robert's Shell support series 
git am ../patch/0001-efi_loader-Initial-EFI_DEVICE_PATH_UTILITIES_PROTOCO.patch

git am ../patch/0001-efi_loader-do-not-use-2.0.5-as-UEFI-revision-number.patch
git am ../patch/0001-efi_loader-provide-firmware-revision.patch

git am ../patch/0001-efi_loader-efi_get_time_init-should-return-status-co.patch
git am ../patch/0001-efi_loader-check-initialization-of-EFI-subsystem-is-.patch
git am ../patch/0001-efi_loader-do_bootefi_exec-should-always-return-an-E.patch

# To be reworked
# git am ../patch/0001-efi_loader-memory-reservations-according-to-e820-tab.patch

# git am ../patch/0001-efi_loader-clean-up-efi_exit.patch
# git am ../patch/0001-efi_loader-correct-return-types-do_bootefi_exec.patch
# git am ../patch/0001-efi_loader-call-efi_setup_loaded_image-first.patch

# Work in progress
# git am ../patch/0001-efi_loader-debug-print-memory-map.patch
# git am ../patch/0001-efi_loader-Exit-must-remove-loaded-image-handle.patch
# git am ../patch/0001-efi_loader-allow-multiple-source-files-for-EFI-apps.patch
