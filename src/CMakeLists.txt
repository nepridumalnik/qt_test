set(TARGET qt_test)

set(SOURCES
    main.cpp
)

set(LIBRARIES
    ${CONAN_LIBS}
)

set(LIBRARY_DIRS
    ${CONAN_LIB_DIRS}
)

set(INCLUDES
    ${CONAN_INCLUDE_DIRS}
)

add_executable(${TARGET} ${SOURCES})
target_link_libraries(${TARGET} PRIVATE ${LIBRARIES})
