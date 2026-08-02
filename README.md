# Android device tree for HRA G1H (G1H)

This Unisoc tree uses the `twrp-12.1` TWRP source
branch for Android 10. Build it with lunch
target `twrp_G1H-eng`.
The required source overlay is under `prebuilt/sourcecode`; run `./patch.sh`
there before building and `./recovery.sh` after the build to restore the
original files.
The stock SELinux policy is retained as `prebuilt/sepolicy.stock`. The SPRD
builder compiles `tools/patch_stock_sepolicy.c` and runs
`tools/patch_stock_sepolicy.sh` automatically. For a local build, compile the
C helper against static `libsepol`, set `SEPOLICY_PATCHER` to the resulting
executable, then run the shell helper before building. Recovery switches the
SELinux enforcement sysfs node from its recovery-only init rc; the shared
vendor_boot command line is not changed.

```
#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
```
此设备树存在问题
