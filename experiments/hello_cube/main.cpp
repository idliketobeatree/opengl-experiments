#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <Application.hpp>

#include <cstdlib>

int main()
{
	Application application;

	application.init();
	while (!glfwWindowShouldClose(application.window))
		application.loop();
	application.cleanup();

	return EXIT_SUCCESS;
}