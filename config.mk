GCC_PATH ?=
BINUTILS_PATH ?= 
MINGW32_PATH ?= 

CC := i686-w64-mingw32-gcc
LD := $(CC)
STRIP := i686-w64-mingw32-strip

ARCH := 32

CFLAGS_OPT := \
    -Os \
    -mmmx

CFLAGS := \
    -m$(ARCH) \
    -std=c99 \
    -shared \
    -fdiagnostics-color=auto \
    -Wall \
    -D_WIN32_WINNT=0x0600

LDFLAGS := \
    -m$(ARCH) \
    -shared \
    -Wl,--enable-auto-import \
    -Wl,--enable-stdcall-fixup \
    -e_DllMainCRTStartup@12 \
    -static-libgcc

LDLIBS := \
	-lwinmm
