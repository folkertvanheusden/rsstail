#ifdef  _POSIX_C_SOURCE
#define _POSIX_C_SOURCE_BACKUP _POSIX_C_SOURCE
#undef  _POSIX_C_SOURCE
#endif

#define POSIX_C_SOURCE 200809L

#ifndef _r2t_h_
#define _r2t_h_


#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include <errno.h>
#include <mrss.h>
#include <langinfo.h>
#include <locale.h>
#include <iconv.h>

void replace(char *const in, const char *const what, char by_what);

char *remove_html_tags(const char *const in);

int is_new_record(mrss_item_t *check_list, mrss_item_t *cur_item);

void version(void);

char* my_convert(iconv_t converter, const char *input);

void usage(void);

#endif
