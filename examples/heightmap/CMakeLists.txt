cmake_minimum_required(VERSION 3.22.1 FATAL_ERROR)
project(gz-rendering-heightmap)
find_package(gz-rendering REQUIRED)

include_directories(SYSTEM
  ${PROJECT_BINARY_DIR}
)

find_package(GLUT REQUIRED)
include_directories(SYSTEM ${GLUT_INCLUDE_DIRS})
link_directories(${GLUT_LIBRARY_DIRS})

if (CMAKE_SYSTEM_NAME STREQUAL "QNX")
  find_package(OpenGL REQUIRED COMPONENTS GLES2)
  include_directories(SYSTEM ${OpenGL_gles2_INCLUDE_DIR})
  link_directories(${OpenGL_gles2_LIBRARY_DIR})
  set(OPENGL_LIBRARIES ${OpenGL_gles2_LIBRARY})
else()
  find_package(OpenGL REQUIRED)
  include_directories(SYSTEM ${OpenGL_INCLUDE_DIRS})
  link_directories(${OpenGL_LIBRARY_DIRS})
endif()

if (NOT APPLE)
  find_package(GLEW REQUIRED)
  include_directories(SYSTEM ${GLEW_INCLUDE_DIRS})
  link_directories(${GLEW_LIBRARY_DIRS})
endif()

if(NOT MSVC)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-deprecated-declarations")
endif()

configure_file (example_config.hh.in ${PROJECT_BINARY_DIR}/example_config.hh)

add_executable(heightmap Main.cc GlutWindow.cc)

target_link_libraries(heightmap
  ${GLUT_LIBRARIES}
  ${OPENGL_LIBRARIES}
  ${GLEW_LIBRARIES}
  ${GZ-RENDERING_LIBRARIES}
)

add_custom_command(TARGET heightmap POST_BUILD
  COMMAND ${CMAKE_COMMAND} -E copy_directory
  ${CMAKE_SOURCE_DIR}/media
  $<TARGET_FILE_DIR:heightmap>/media)
