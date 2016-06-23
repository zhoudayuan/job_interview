#include <stdio.h>
#include <string.h>

char *str_cpy(char*	dest, const	char *src);
char *str_n_cpy(char *dest,	const char *src, unsigned int n);
char *str_n_cpy_0(char *dest,	const char *src, unsigned int n);
int str_len(const char *src);




int	main()
{
	char array[50]={0};
	printf("[%s:%d]	~~~~~~~~~ copy str ~~~~~~~~~\n", __FUNCTION__, __LINE__);
	printf("[%s:%d]	array=%s\n", __FUNCTION__, __LINE__, str_cpy(array,	"zhoudayuan-abc"));
	printf("[%s:%d]	array=%s\n", __FUNCTION__, __LINE__, str_n_cpy(array, "abcd", 10));
	printf("[%s:%d]	array=%s\n", __FUNCTION__, __LINE__, str_n_cpy(array, "123456789", 5));
	printf("[%s:%d]	len=%d\n", __FUNCTION__, __LINE__, str_len(array));
	return 0;
}


/*
 *	拷贝字符串
 */
char *str_cpy(char*	dest, const	char *src)
{
	char *p=dest;
	while ((*p++ = *src++) != '\0');
	*p='\0';
	return dest;
}



/*
 * 按着字节拷贝字符串 第一个
 */
char *str_n_cpy(char *dest,	const char *src, unsigned int n)
{
	int	i;
	char *p	= dest;

	for	(i = 0;	i <	n; i++)
	{
		if (*src ==	'\0')
		{
			break;
		}
		*p++ = *src++;
	}
	*p = '\0';

	return dest;
}




/*
 * 按着字节拷贝字符串 第2个
 */
char *str_n_cpy_0(char *dest,	const char *src, unsigned int n)
{
	char *p	= dest;
	while ((n--) &&	(*src != '\0'))
	{
		*p++ = *src++;
	}

	p='\0';

	return dest;
}



/*
 * 字符串长度
 */
int str_len(const char *src)
{
	int len = 0;
	while (*src++ != '\0')
	{
		len++;
	}
	return len;
}

