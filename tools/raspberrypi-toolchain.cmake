# 크로스 컴파일 경로 설정
SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_PROCESSOR arm)

# 크로스 컴파일러 툴체인 설정
SET(CMAKE_C_COMPILER /usr/bin/arm-linux-gnueabihf-gcc)
SET(CMAKE_CXX_COMPILER /usr/bin/arm-linux-gnueabihf-g++)

# 라즈베리파이의 sysroot 설정 (필요한 경우)
# SET(CMAKE_FIND_ROOT_PATH /path/to/raspberrypi/sysroot)

# 크로스 컴파일을 위한 추가 설정
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE BOTH)

# 기본적으로 타겟 시스템에 맞게 설정 (필요한 경우 추가)
SET(CMAKE_C_FLAGS "-march=armv7-a -mfpu=vfpv3-d16 -mfloat-abi=hard")
SET(CMAKE_CXX_FLAGS "-march=armv7-a -mfpu=vfpv3-d16 -mfloat-abi=hard")