# 可执行文件
TARGET = test

#文件包含路径
VPATH =  ./include 

#当前目录下的所有源文件
CODE_SRC = $(wildcard *.c)

#所有头文件的路径
#为了防止命令行变量定义的值替代 Makefile 中变量定义的值。需要在 Makefile 中使用指示符“override”来声明这个变量，
override HEAD_PATH += $(patsubst %, -I%,$(subst :, ,$(VPATH)))

# C文件
SRCS = $(CODE_SRC)

# 目标文件
OBJS = $(SRCS:.c=.o)


# 指令编译器和选项
CC=gcc
CFLAGS=-Wall

CFLAGS += $(HEAD_PATH)


$(TARGET):$(OBJS)
	$(CC) -o $@ $^ $(CFLAGS)

%.o:%.c
	$(CC) $(CFLAGS) -o $@ -c $<
	
.PHONY:clean
clean:
	rm -rf $(TARGET) $(OBJS)
	
#所要看的文件
PRI:
	@echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	@echo "CODE_SRC=$(CODE_SRC)"
	@echo "VPATH=$(VPATH)"
	@echo "CFLAGS=$(CFLAGS)"
	@echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
