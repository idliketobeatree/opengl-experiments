#include "Application.hpp"

#include <litelogger/litelogger.hpp>

const char *vertexShaderSource =
	"#version 330 core\n"
	"layout (location = 0) in vec2 inPosition;\n"
	"layout (location = 1) in vec3 inColor;\n"

	"out vec3 fragColor;\n"

	"void main() {\n"
	"   gl_Position = vec4(inPosition.x, inPosition.y, 0.0, 1.0);\n"
	"   fragColor = inColor;\n"
	"}\n";
const char *fragmentShaderSource =
	"#version 330 core\n"
	"in vec3 fragColor;\n"

	"out vec4 outColor;\n"

	"void main() {\n"
	"   outColor = vec4(fragColor, 1.0);\n"
	"}";

void Application::init() {
	litelogger::changeLevel(-1);

	glfwInit();

	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
	glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
	glfwWindowHint(GLFW_RESIZABLE, GL_TRUE);

	this->windowWidth = 854;
	this->windowHeight = 480;
	this->window = glfwCreateWindow(this->windowWidth, this->windowHeight, "Hello Triangle", NULL, NULL);

	glfwMakeContextCurrent(window);
	glfwSwapInterval(1);

	glfwSetFramebufferSizeCallback(window, framebufferSizeCallback);

	gladLoadGLLoader((GLADloadproc)glfwGetProcAddress);

	int success;
	GLuint vertexShader, fragmentShader;

	vertexShader = glCreateShader(GL_VERTEX_SHADER);
	glShaderSource(vertexShader, 1, &vertexShaderSource, NULL);
	glCompileShader(vertexShader);

	glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &success);
	if (success == GL_FALSE) {
		int infoLogLength;
		glGetShaderiv(vertexShader, GL_INFO_LOG_LENGTH, &infoLogLength);

		char infoLog[infoLogLength];
		glGetShaderInfoLog(vertexShader, infoLogLength, NULL, infoLog);
		litelogger::exitError(infoLog);
	}

	fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
	glShaderSource(fragmentShader, 1, &fragmentShaderSource, NULL);
	glCompileShader(fragmentShader);

	glGetShaderiv(fragmentShader, GL_COMPILE_STATUS, &success);
	if (success == GL_FALSE) {
		int infoLogLength;
		glGetShaderiv(fragmentShader, GL_INFO_LOG_LENGTH, &infoLogLength);

		char infoLog[infoLogLength];
		glGetShaderInfoLog(fragmentShader, infoLogLength, NULL, infoLog);
		litelogger::exitError(infoLog);
	}

	this->shaderProgram = glCreateProgram();
	glAttachShader(shaderProgram, vertexShader);
	glAttachShader(shaderProgram, fragmentShader);
	glLinkProgram(shaderProgram);
	
	glGetProgramiv(shaderProgram, GL_LINK_STATUS, &success);
	if (success == GL_FALSE) {
		int infoLogLength;
		glGetProgramiv(shaderProgram, GL_INFO_LOG_LENGTH, &infoLogLength);

		char infoLog[infoLogLength];
		glGetProgramInfoLog(shaderProgram, infoLogLength, NULL, infoLog);
		litelogger::exitError(infoLog);
	}
	glDeleteShader(vertexShader);
	glDeleteShader(fragmentShader);

	this->vertices = std::vector<Vertex>({
		Vertex{glm::vec2(-0.5f, -0.5f), glm::vec3(1.0f, 0.0f, 0.0f)},
		Vertex{glm::vec2( 0.5f, -0.5f), glm::vec3(0.0f, 1.0f, 0.0f)},
		Vertex{glm::vec2( 0.0f,  0.5f), glm::vec3(0.0f, 0.0f, 1.0f)}
	});

	glGenVertexArrays(1, &vao);
	glBindVertexArray(vao);

	glGenBuffers(1, &vbo);
	glBindBuffer(GL_ARRAY_BUFFER, vbo);
	glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(Vertex), vertices.data(), GL_STATIC_DRAW);

	glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void *)offsetof(Vertex, position));
	glEnableVertexAttribArray(0);

	glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void *)offsetof(Vertex, color));
	glEnableVertexAttribArray(1);

	glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
	glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
	glEnable(GL_CULL_FACE);
	glCullFace(GL_BACK);
	glFrontFace(GL_CCW);

	glEnable(GL_FRAMEBUFFER_SRGB);
}
void Application::loop() {
	glClear(GL_COLOR_BUFFER_BIT);

	glUseProgram(shaderProgram);
	glBindVertexArray(vao);
	glDrawArrays(GL_TRIANGLES, 0, 3);

	glfwSwapBuffers(window);
	glfwPollEvents();
}
void Application::cleanup() {
	glDeleteBuffers(1, &vbo);
	glDeleteVertexArrays(1, &vao);
	glDeleteProgram(shaderProgram);

	glfwTerminate();
}
void Application::framebufferSizeCallback(GLFWwindow *window, int width, int height) {
	glViewport(0, 0, width, height);
}