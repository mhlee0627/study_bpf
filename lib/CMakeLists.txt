file(GLOB_RECURSE SRC_FILES CONFIGURE_DEPENDS
    ${CMAKE_CURRENT_SOURCE_DIR}/*.cc
)

add_library(shape STATIC ${SRC_FILES})

# shape 빌드할 때뿐만 아니라, shape를 사용하는 다른 타겟에서도 inlcude 디렉토리를 설정(*PUBLIC 이기때문에*)
target_include_directories(shape PUBLIC ${CMAKE_SOURCE_DIR}/include)

target_compile_options(shape PRIVATE -Wall -Werror)

target_compile_features(shape PRIVATE cxx_std_11)

include(FetchContent)

FetchContent_Declare(
    Fmt
    GIT_REPOSITORY "https://github.com/fmtlib/fmt"
    GIT_TAG "7.1.3"
)
FetchContent_MakeAvailable(Fmt)

# shape를 빌드할 때, fmt 라이브러리를 링크하지만, shape를 사용하는(링크하는) 다른 타겟에는 영향을 미치지 않는다.
target_link_libraries(shape PRIVATE fmt)