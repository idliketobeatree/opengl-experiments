cmake_minimum_required(VERSION 3.2)

project(OrbitalCamera)
set(CMAKE_CXX_STANDARD 17)

include_directories(${PROJECT_NAME} 
	${PROJECT_SOURCE_DIR}
	${PROJECT_SOURCE_DIR}/../../
	${PROJECT_SOURCE_DIR}/../../lib/
)

add_subdirectory(${PROJECT_SOURCE_DIR}/../../lib/glfw/ ${PROJECT_SOURCE_DIR}/../../lib/glfw/)
add_subdirectory(${PROJECT_SOURCE_DIR}/../../lib/glad/ ${PROJECT_SOURCE_DIR}/../../lib/glad/)

add_executable(${PROJECT_NAME}
	main.cpp

	Application.cpp
	Application.hpp
)

target_link_libraries(${PROJECT_NAME}
	glfw
	glad
)