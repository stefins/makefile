#include <stdio.h>
#include <waster.h>
#include <stdlib.h>
#include <pthread.h>

int main(int argc, char** argv){
    pthread_t th1;
    pthread_create(&th1,NULL,sayHello,NULL);
    sayHello2(NULL);
    pthread_join(th1,NULL);
    return 0;
}