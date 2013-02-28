/* my own error message reporter */
#include"glob.h"
u8 err_msg[ERR_MSG_LEN];
void perrmsg(u8 * msg)
{
	fprintf(stdout,"%s:%s\n",msg,err_msg);
	return;
}
void serrmsg(u8 * msg)
{
	bzero(err_msg,ERR_MSG_LEN);
	if(strlen(msg) > ERR_MSG_LEN){
		fprintf(stderr,"error message too long!\n");
		return;
	}
	strcpy(err_msg,msg);
	return;
}
