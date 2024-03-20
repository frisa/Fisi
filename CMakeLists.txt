cmake_minimum_required(VERSION 3.1...3.26)

IF(APPLE)
    set(CMAKE_PREFIX_PATH "/Users/jan/Qt/6.6.2/macos/lib/cmake/Qt6")
ELSE()
    set(CMAKE_PREFIX_PATH "/home/frid/Qt/6.6.2/gcc_64")
ENDIF()

project(fisi VERSION 1.0 LANGUAGES CXX)
set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.6 REQUIRED COMPONENTS Quick Gui)

qt_add_executable(fisi ./src/program.cpp)
target_include_directories(fisi 
    PRIVATE
        "~/Qt/6.6.2/macos/lib/QtCore.framework/Headers"
        "~/Qt/6.6.2/macos/lib/QtQml.framework/Headers"
        "~/Qt/6.6.2/macos/lib/QtGui.framework/Headers"
    )

target_sources(fisi
    PRIVATE
        ./src/program.cpp
    PUBLIC
    )

qt_standard_project_setup()
target_link_libraries(fisi PRIVATE Qt6::Gui Qt6::Quick)
