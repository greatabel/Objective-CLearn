

#include <stdio.h>

long int test(int value){
    long int result=1;
    for (int i=1;i<=value;++i){
        
        result=result+i;
    }

    
    return result;
}