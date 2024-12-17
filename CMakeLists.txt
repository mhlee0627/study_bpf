cmake_minimum_required(VERSION 3.11)

project(
    StudyBPF
    VERSION 0.1
    DESCRIPTION  "For study BPF on rapa"
    LANGUAGES CXX
)

# 크로스 컴파일 설정을 위한 Toolchain 파일을 사용
# 이 파일은 CMake를 사용할 때 -DCMAKE_TOOLCHAIN_FILE로 지정
# 예: cmake .. -DCMAKE_TOOLCHAIN_FILE=../raspberrypi-toolchain.cmake
# set(CMAKE_TOOLCHAIN_FILE "${CMAKE_SOURCE_DIR}/tools/raspberrypi-toolchain.cmake")

message(STATUS "toolchain: ${CMAKE_TOOLCHAIN_FILE}")

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_subdirectory(app)
add_subdirectory(lib)
add_subdirectory(tests)