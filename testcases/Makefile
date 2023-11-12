PREFIX?=riscv64-linux-musl-
CC=$(PREFIX)gcc
LD=$(PREFIX)ld
CFLAGS=-static
LIB_DIR := lib
APP_DIR := src
BUILD_DIR := build

LIBS := $(wildcard $(LIB_DIR)/*.c)
ASM := $(wildcard $(LIB_DIR)/*.S)
LIBS_OBJ := $(LIBS:%.c=%.o) $(ASM:%.S=%.o) 
SRCS := $(wildcard $(APP_DIR)/*.c)
APPS := $(addprefix $(APP_DIR)/, 42 hello)
STDAPPS := $(addprefix $(APP_DIR)/, hellostd)

build: clean $(LIBS_OBJ) $(APPS) $(STDAPPS)

clean:
	@rm -rf $(BUILD_DIR)
	@rm -rf $(LIB_DIR)/*.o
	@rm -rf $(APP_DIR)/*.o

$(STDAPPS):%:%.o
	@$(CC) $< $(CFLAGS) -o $@ 
	@mkdir -p build
	@mv $@ $(addprefix build/, $(notdir $(basename $@)))

$(APPS):%:%.o
	@$(LD) $< $(LIBS_OBJ) -o $@ 
	@mkdir -p build
	@mv $@ $(addprefix build/, $(notdir $(basename $@)))

.PHONY: clean build