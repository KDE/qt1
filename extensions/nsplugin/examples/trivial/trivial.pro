TEMPLATE	= app
CONFIG		= qt dll release
HEADERS		= 
SOURCES		= trivial.cpp
unix:TMAKE_LIBS = -L$(QTDIR)/lib -lqnp -lXt -lm
win32:LIBS	= $(QTDIR)/lib/qnp.lib
DEF_FILE	= trivial.def
RC_FILE		= trivial.rc
TARGET      	= trivial
win32:TARGET	= nptrivial
