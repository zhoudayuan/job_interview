# ��ִ���ļ�
TARGET = test

#�ļ�����·��
VPATH =  ./include 

#��ǰĿ¼�µ�����Դ�ļ�
CODE_SRC = $(wildcard *.c)

#����ͷ�ļ���·��
#Ϊ�˷�ֹ�����б��������ֵ��� Makefile �б��������ֵ����Ҫ�� Makefile ��ʹ��ָʾ����override�����������������
override HEAD_PATH += $(patsubst %, -I%,$(subst :, ,$(VPATH)))

# C�ļ�
SRCS = $(CODE_SRC)

# Ŀ���ļ�
OBJS = $(SRCS:.c=.o)


# ָ���������ѡ��
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
	
#��Ҫ�����ļ�
PRI:
	@echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	@echo "CODE_SRC=$(CODE_SRC)"
	@echo "VPATH=$(VPATH)"
	@echo "CFLAGS=$(CFLAGS)"
	@echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
