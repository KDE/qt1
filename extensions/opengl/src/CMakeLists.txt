set(QGL_SRCS qgl.cpp)
qt1_wrap_moc(QGL_SRCS SOURCES qgl.h)

add_qt1_object_library(qgl SOURCES ${QGL_SRCS})

target_link_libraries(qgl PUBLIC OpenGL::GL)

target_compile_definitions(qgl PUBLIC GLX_GLXEXT_PROTOTYPES=1)
