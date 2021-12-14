#include <stdio.h>
#include <unistd.h>


void* 
sayHello(void *null){
    for(int i=0;i<10;i++){
        printf("Hello %d\n",i);
        sleep(1);
    }
    return NULL;
}

void* 
sayHello2(void *null){
    for(int i=0;i<20;i++){
        printf("Hello %d\n",i);
        sleep(1/2);
    }
    return NULL;
}