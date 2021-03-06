#version 330 core

layout (location = 0) in vec3 v_position;
layout (location = 1) in vec2 v_texCoord;

uniform mat4 transform;

out vec2 f_texCoord;

void main(void) {
    gl_Position = transform * vec4(v_position.x, v_position.y, v_position.z, 1.0);
    f_texCoord = v_texCoord;
}
