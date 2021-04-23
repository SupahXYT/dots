#include <stdio.h>
#include <string.h>
#include <stdlib.h>

/* I don't actually know C, so this is probably bad */
/* Whatever, any memory is deallocated upon exiting the program anyways... (probably) */
/* Not that I know of anything that low-level anyways */

char *
filec(char *filename)
{
	FILE *fp;
	char *line = NULL;
	size_t len = 0;
	ssize_t read;

	fp = fopen(filename, "r");
	if (fp == NULL)
		exit(EXIT_FAILURE);

	while ((read = getline(&line, &len, fp)) != -1) {}
	return line; /* Return last line */
}

int
getbat(void)
{
	return atoi(filec("/sys/class/power_supply/BAT0/capacity"));

}

char *
batsym(int capacity)
{
	if (capacity > 90)
	{
		return ""; 	

	} else if (capacity > 63) 
	{
		return "";

	} else if (capacity > 33) 
	{
		return "";

	} else if (capacity > 20) 
	{
		return "";

	} else 
	{
		return "";

	}
}

int 
main(void)
{
	printf("%d%% %s\n", getbat(), batsym(getbat()));
}
