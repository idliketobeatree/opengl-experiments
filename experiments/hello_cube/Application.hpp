#pragma once

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <GLM/glm/glm.hpp>

#include <vector>

class Application {
public:
	struct Vertex {
		glm::vec3 position;
		glm::vec3 color;
	};
public:
	GLFWwindow *window;
	int windowWidth, windowHeight, framebufferWidth, framebufferHeight;

	GLuint shaderProgram;
	GLint mvpLoc;

	glm::mat4 view, projection;
	glm::vec3 cameraPosition, cameraRotation;

	std::vector<Vertex> vertices;
	std::vector<uint16_t> indices;
	GLuint vao;
	GLuint vbo, ibo;

	uint64_t frame;
public:
	void init();
	void loop();
	void cleanup();

	static void framebufferSizeCallback(GLFWwindow *window, int width, int height);
};