# Swift Toolchain For STM32MP1

## Swift Version
`Swift 5.8.1`

## How to use
1. extract file
```bash
STM32MP1_SWIFT_RUNTIME_PATH=<path/to/extract>
tar zxvf swift-5.8.1-runtime-stm32mp1.tar.gz $STM32MP1_SWIFT_RUNTIME_PATH
```

2. modify `build_stm32.sh`, set the path
```
# Set follow path
export SWIFT_BIN=/path/to/your/host/swift/tool/usr/bin
export SWIFT_RESOURCE_DIR=/path/to/your/stm32/runtime/usr/lib/swift
export STM32_SDK_PATH=/path/to/your/host/stm32/sdk/sysroot
```

3. build your project use `build_stm32.sh`

4. copy runtime lib to stm32mp1 board

5. run in your board with
```bash
LD_LIBRARY_PATH=<path/to/runtime/usr/lib/swift/linux> ./your_swift_program
```

## Support Framework
1. Foundation
2. Dispatch
3. FoundationNetwork
3. Glibc