TWRP device tree for Motorola Moto G5 (Cedric)
===========================================

The Motorola Moto G5 (codenamed _"cedric"_) is a mid-range smartphone from Motorola mobility.
It was announced on February 2017.

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Octa-core 1.4 GHz Cortex-A53
Chipset | Qualcomm MSM8937 Snapdragon 430
GPU     | Adreno 505
Memory  | 2/3 GB RAM
Shipped Android Version | 7.0
Storage | 16/32 GB
MicroSD | Up to 128 GB
Battery | Li-Ion 2800mAh battery
Display | 1920 x 1080 pixels, 5.0 inches (~441 ppi pixel density)
Camera  | 13 MP, f/2.0, phase detection autofocus, LED flash
Front Camera  |  5 MP, f/2.2

Copyright 2017 - The LineageOS Project.

![Moto G5](http://cdn2.gsmarena.com/vv/pics/motorola/motorola-moto-g5-1.jpg "Moto G5")

## How To Compile
------------------

First you need to download and sync the omni source

    repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-7.1 --depth=1 --current-branch
    repo sync --force-broken --force-sync --current-branch


Then clone the Cedric TWRP repo and dependencies

    git clone https://github.com/Akipe/twrp_android_device_motorola_cedric -b twrp-7.1-64 device/motorola/cedric
    git clone https://github.com/Akipe/twrp_android_device_motorola_msm8937-common -b twrp-7.1-64 device/motorola/msm8937-common
    git clone https://github.com/moto8937/android_kernel_motorola_msm8937 -b cm-14.1 kernel/motorola/msm8937

    git clone https://github.com/LineageOS/android_device_qcom_common -b cm-14.1 vendor/qcom/common
    git clone https://github.com/LineageOS/android_vendor_qcom_opensource_cryptfs_hw -b cm-14.1 vendor/qcom/cryptfs_hw

Or you can use my manifest at https://github.com/Akipe/android_development_manifest (*cedric_twrp-7.1-64.xml*)


Type the following in a terminal prompt inside from inside the root of your working folder

    source build/envsetup.sh
    lunch # Select omni_cedric-userdebug
    make -j$(nproc) recoveryimage


The recovery image will be outputted at ```out/target/product/cedric/recovery.img```

Finally you can boot for testing or flash the image :

    fastboot boot recovery.img
    # Or
    fastboot flash recovery recovery.img


