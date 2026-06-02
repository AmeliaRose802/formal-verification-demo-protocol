cmake_minimum_required(VERSION 3.20)
project(sdep CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

if(MSVC)
    add_compile_options(/W4 /permissive- /EHsc)
else()
    add_compile_options(-Wall -Wextra -Wpedantic -Wshadow -Wconversion
                        -Wnon-virtual-dtor -Wold-style-cast)
endif()

add_library(sdep STATIC
    src/decision.cpp        # All pure decision functions verified by SAW.
    src/hmac.cpp
    src/canonical.cpp
    src/auth.cpp
    src/uuid.cpp
    src/key_store.cpp
    src/controller.cpp
)
target_include_directories(sdep PUBLIC include)

enable_testing()
add_executable(sdep_test tests/test_properties.cpp)
target_link_libraries(sdep_test PRIVATE sdep)
add_test(NAME sdep_properties COMMAND sdep_test)
