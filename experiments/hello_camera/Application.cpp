#include "Application.hpp"

#include <GLM/glm/ext/matrix_transform.hpp>
#include <GLM/glm/ext/matrix_clip_space.hpp>
#include <GLM/glm/gtc/type_ptr.hpp>

#include <litelogger/litelogger.hpp>

const char *vertexShaderSource =
	"#version 330 core\n"
	"layout (location = 0) in vec3 inPosition;\n"
	"layout (location = 1) in vec3 inColor;\n"

	"uniform mat4 mvp;\n"

	"out vec3 fragColor;\n"

	"void main() {\n"
	"   gl_Position = mvp * vec4(inPosition, 1.0);\n"
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
	this->window = glfwCreateWindow(this->windowWidth, this->windowHeight, "Hello Camera", NULL, NULL);

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

	this->mvpLoc = glGetUniformLocation(shaderProgram, "mvp");

	this->vertices = std::vector<Vertex>({
		Vertex{glm::vec3( 0.5f, -0.5f, -0.5f), glm::vec3(0.0f, 0.0f, 1.0f)}, // back bottom left
		Vertex{glm::vec3(-0.5f, -0.5f, -0.5f), glm::vec3(0.0f, 0.0f, 1.0f)}, // back bottom right
		Vertex{glm::vec3( 0.5f,  0.5f, -0.5f), glm::vec3(0.0f, 0.0f, 1.0f)}, // back top left
		Vertex{glm::vec3(-0.5f,  0.5f, -0.5f), glm::vec3(0.0f, 0.0f, 1.0f)}, // back top right

		Vertex{glm::vec3(-0.5f, -0.5f,  0.5f), glm::vec3(0.0f, 0.0f, 1.0f)}, // front bottom left
		Vertex{glm::vec3( 0.5f, -0.5f,  0.5f), glm::vec3(0.0f, 0.0f, 1.0f)}, // front bottom right
		Vertex{glm::vec3(-0.5f,  0.5f,  0.5f), glm::vec3(0.0f, 0.0f, 1.0f)}, // front top left
		Vertex{glm::vec3( 0.5f,  0.5f,  0.5f), glm::vec3(0.0f, 0.0f, 1.0f)}, // front top right

		Vertex{glm::vec3(-0.5f, -0.5f, -0.5f), glm::vec3(1.0f, 0.0f, 0.0f)}, // left bottom left
		Vertex{glm::vec3(-0.5f, -0.5f,  0.5f), glm::vec3(1.0f, 0.0f, 0.0f)}, // left bottom right
		Vertex{glm::vec3(-0.5f,  0.5f, -0.5f), glm::vec3(1.0f, 0.0f, 0.0f)}, // left top left
		Vertex{glm::vec3(-0.5f,  0.5f,  0.5f), glm::vec3(1.0f, 0.0f, 0.0f)}, // left top right

		Vertex{glm::vec3( 0.5f, -0.5f,  0.5f), glm::vec3(1.0f, 0.0f, 0.0f)}, // right bottom left
		Vertex{glm::vec3( 0.5f, -0.5f, -0.5f), glm::vec3(1.0f, 0.0f, 0.0f)}, // right bottom right
		Vertex{glm::vec3( 0.5f,  0.5f,  0.5f), glm::vec3(1.0f, 0.0f, 0.0f)}, // right top left
		Vertex{glm::vec3( 0.5f,  0.5f, -0.5f), glm::vec3(1.0f, 0.0f, 0.0f)}, // right top right

		Vertex{glm::vec3(-0.5f, -0.5f, -0.5f), glm::vec3(0.0f, 1.0f, 0.0f)}, // bottom bottom left
		Vertex{glm::vec3( 0.5f, -0.5f, -0.5f), glm::vec3(0.0f, 1.0f, 0.0f)}, // bottom bottom right
		Vertex{glm::vec3(-0.5f, -0.5f,  0.5f), glm::vec3(0.0f, 1.0f, 0.0f)}, // bottom top left
		Vertex{glm::vec3( 0.5f, -0.5f,  0.5f), glm::vec3(0.0f, 1.0f, 0.0f)}, // bottom top right

		Vertex{glm::vec3( 0.5f,  0.5f, -0.5f), glm::vec3(0.0f, 1.0f, 0.0f)}, // top bottom left
		Vertex{glm::vec3(-0.5f,  0.5f, -0.5f), glm::vec3(0.0f, 1.0f, 0.0f)}, // top bottom right
		Vertex{glm::vec3( 0.5f,  0.5f,  0.5f), glm::vec3(0.0f, 1.0f, 0.0f)}, // top top left
		Vertex{glm::vec3(-0.5f,  0.5f,  0.5f), glm::vec3(0.0f, 1.0f, 0.0f)}  // top top right
	});

	this->indices = std::vector<uint16_t>({
		0,  1,  2,  // back
		1,  3,  2,
		4,  5,  6,  // front
		5,  7,  6,
		8,  9,  10, // left
		9,  11, 10,
		12, 13, 14, // right
		13, 15, 14,
		16, 17, 18, // bottom
		17, 19, 18,
		20, 21, 22, // top
		21, 23, 22
	});

	glGenVertexArrays(1, &vao);
	glBindVertexArray(vao);

	glGenBuffers(1, &vbo);
	glBindBuffer(GL_ARRAY_BUFFER, vbo);
	glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(Vertex), vertices.data(), GL_STATIC_DRAW);

	glGenBuffers(1, &ibo);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ibo);
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof(uint16_t), indices.data(), GL_STATIC_DRAW);

	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void *)offsetof(Vertex, position));
	glEnableVertexAttribArray(0);

	glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void *)offsetof(Vertex, color));
	glEnableVertexAttribArray(1);

	glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
	glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
	glEnable(GL_CULL_FACE);
	glCullFace(GL_BACK);
	glFrontFace(GL_CCW);

	glEnable(GL_FRAMEBUFFER_SRGB);
	glEnable(GL_DEPTH_TEST);

	this->frame = 0;
	this->cameraPosition = glm::vec3(0, 0, -3);
}
void Application::loop() {
	glfwGetWindowSize(window, &windowWidth, &windowHeight);
	glfwGetFramebufferSize(window, &framebufferWidth, &framebufferHeight);

	this->handleInput();

	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	glUseProgram(shaderProgram);
	glBindVertexArray(vao);

	glm::mat4 mvp = projection * view * glm::mat4(1);
	glUniformMatrix4fv(mvpLoc, 1, GL_FALSE, glm::value_ptr(mvp));
	glDrawElements(GL_TRIANGLES, this->indices.size(), GL_UNSIGNED_SHORT, (void*)0);

	this->frame++;

	glfwSwapBuffers(window);
	glfwPollEvents();
}
void Application::handleInput() {
	float cameraSpeed = 0.05f;
	float mouseSensitivity = 0.003f;

	if (glfwGetKey(window, GLFW_KEY_LEFT_CONTROL) == GLFW_PRESS) {
		cameraSpeed /= 2.0f;
		mouseSensitivity /= 2.0f;
	}
	if (glfwGetKey(window, GLFW_KEY_LEFT_SHIFT) == GLFW_PRESS) {
		cameraSpeed *= 2.0f;
	}

	glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);

	static double lastX, lastY;
	double mouseX, mouseY;
	glfwGetCursorPos(window, &mouseX, &mouseY);

	if (mouseX != lastX || mouseY != lastY) {
		double xOffset = mouseX - lastX;
		double yOffset = mouseY - lastY;

		cameraYaw += xOffset * mouseSensitivity;
		cameraPitch -= yOffset * mouseSensitivity;

		if (cameraPitch > glm::pi<double>() / 2.0-0.001)
			cameraPitch = glm::pi<double>() / 2.0-0.001;
		if (cameraPitch < -glm::pi<double>() / 2.0+0.001)
			cameraPitch = -glm::pi<double>() / 2.0+0.001;

		lastX = mouseX;
		lastY = mouseY;
	}

	glm::vec3 forward = glm::vec3(std::cos(cameraYaw) * std::cos(cameraPitch), std::sin(cameraPitch), std::sin(cameraYaw) * std::cos(cameraPitch));
	glm::vec3 right = glm::normalize(glm::cross(glm::vec3(0.0f, 1.0f, 0.0f), forward));
	glm::vec3 up = glm::cross(forward, right);

	if (glfwGetKey(window, GLFW_KEY_SPACE) == GLFW_PRESS) {
		cameraPosition += up * cameraSpeed;
	}
	if (glfwGetKey(window, GLFW_KEY_C) == GLFW_PRESS) {
		cameraPosition -= up * cameraSpeed;
	}
	if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS) {
		cameraPosition += forward * cameraSpeed;
	}
	if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS) {
		cameraPosition -= forward * cameraSpeed;
	}
	if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
		cameraPosition += right * cameraSpeed;
	}
	if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
		cameraPosition -= right * cameraSpeed;
	}
	if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS) {
		exit(1);
	}

	this->view = glm::lookAt(cameraPosition, cameraPosition + forward, glm::vec3(0.0f, 1.0f, 0.0f));
	this->projection = glm::perspective(glm::radians(70.0f), static_cast<float>(framebufferWidth) / static_cast<float>(framebufferHeight), 0.1f, 100.0f);
}
void Application::cleanup() {
	glDeleteBuffers(1, &vbo);
	glDeleteBuffers(1, &ibo);
	glDeleteVertexArrays(1, &vao);
	glDeleteProgram(shaderProgram);

	glfwTerminate();
}
void Application::framebufferSizeCallback(GLFWwindow *window, int width, int height) {
	glViewport(0, 0, width, height);
}