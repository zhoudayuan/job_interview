#include <stdio.h>
#include <string.h>

char *str_cpy(char* dest, const char *src);


int main()
{
    char array[50]={0};
    printf("[%s:%d] ~~~~~~~~~ copy str ~~~~~~~~~\n", __FUNCTION__, __LINE__);
    str_cpy(array, "zhoudayuan");
	printf("[%s:%d] array=%s\n", __FUNCTION__, __LINE__, array);
    return 0;
}


/*
 *  �����ַ���
 */
char *str_cpy(char* dest, const char *src)
{
	char *p=dest;
	while ((*p++ = *src++) != '\0');
	*p='\0';
    return dest;
}

// ����ͥԺ
// �ǹ�ҫ 80 25��
// 