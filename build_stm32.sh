export SWIFT_BIN=/path/to/your/host/swift/tool/usr/bin
export SWIFT_RESOURCE_DIR=/path/to/your/stm32/runtime/usr/lib/swift
export STM32_SDK_PATH=/path/to/your/host/stm32/sdk/sysroot
$SWIFT_BIN/swift build -v \
            -Xswiftc -use-ld=${STM32_SDK_PATH}/x86_64-ostl_sdk-linux/usr/bin/arm-ostl-linux/arm-ostl-linux-ld  \
            -Xswiftc -tools-directory -Xswiftc ${STM32_SDK_PATH}/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi//usr/lib/arm-ostl-linux-gnueabi/11.3.0/ \
            -Xlinker -L${STM32_SDK_PATH}/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi/usr/lib/arm-ostl-linux-gnueabi/11.3.0/ \
            -Xlinker -L${STM32_SDK_PATH}/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi/usr/lib \
            -Xswiftc -target -Xswiftc armv7-unknown-linux-gnueabihf \
            -Xswiftc -sdk -Xswiftc ${STM32_SDK_PATH}/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi \
            -Xswiftc -resource-dir -Xswiftc $SWIFT_RESOURCE_DIR \
            --triple armv7-unknown-linux-gnueabihf
