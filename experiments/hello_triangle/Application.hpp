#pragma once

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <GLM/glm/vec2.hpp>
#include <GLM/glm/vec3.hpp>

#include <vector>

class Application {
public:
	struct Vertex {
		glm::vec2 position;
		glm::vec3 color;
	};
public:
	GLFWwindow *window;
	int windowWidth, windowHeight;

	GLuint shaderProgram;

	std::vector<Vertex> vertices;
	GLuint vao;
	GLuint vbo;
public:
	void init();
	void loop();
	void cleanup();

	static void framebufferSizeCallback(GLFWwindow *window, int width, int height);
};