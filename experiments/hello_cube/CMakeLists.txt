cmake_minimum_required(VERSION 3.2)

project(HelloCube)
set(CMAKE_CXX_STANDARD 17)

include_directories(${PROJECT_NAME} 
	${PROJECT_SOURCE_DIR}
	${PROJECT_SOURCE_DIR}/../../
	${PROJECT_SOURCE_DIR}/../../lib/
)

add_subdirectory(${PROJECT_SOURCE_DIR}/../../lib/glfw/ ${PROJECT_SOURCE_DIR}/../../lib/glfw/build/)
add_subdirectory(${PROJECT_SOURCE_DIR}/../../lib/glad/ ${PROJECT_SOURCE_DIR}/../../lib/glad/build/)
add_subdirectory(${PROJECT_SOURCE_DIR}/../../lib/glm/ ${PROJECT_SOURCE_DIR}/../../lib/glm/build/)

add_executable(${PROJECT_NAME}
	main.cpp

	Application.cpp
	Application.hpp
)

target_link_libraries(${PROJECT_NAME}
	glfw
	glad
	glm
)