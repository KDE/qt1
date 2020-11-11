qt1_wrap_moc(QGL_SRCS SOURCES qgl.h)

add_qt1_object_library(qgl SOURCES qgl.cpp)

target_link_libraries(qgl OpenGL::GL OpenGL:GLX)

target_compile_definitions(qgl PUBLIC GLX_GLXEXT_PROTOTYPES=1)
