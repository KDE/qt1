#=============================================================================
# Copyright 2018       Helio Chissini de Castro <helio@kde.org>
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# 1. Redistributions of source code must retain the copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 3. The name of the author may not be used to endorse or promote products
#    derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
# IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
# OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
# IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
# NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
# THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

set(WIDGETS_HEADERS
    ${PROJECT_SOURCE_DIR}/examples/aclock/aclock.h
    ${PROJECT_SOURCE_DIR}/examples/dclock/dclock.h
)
set(WIDGETS_SOURCES
    widgets.cpp
    ${PROJECT_SOURCE_DIR}/examples/aclock/aclock.cpp
    ${PROJECT_SOURCE_DIR}/examples/dclock/dclock.cpp
    )

qt1_wrap_moc(WIDGETS_SOURCES SOURCES ${WIDGETS_HEADERS})
qt1_wrap_cpp(WIDGETS_SOURCES SOURCES widgets.cpp)

add_executable(widgets_example ${WIDGETS_SOURCES})
set_target_properties(widgets_example PROPERTIES OUTPUT_NAME widgets)
target_link_libraries(widgets_example PRIVATE Qt::Qt1)
