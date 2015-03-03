//
//  Factorial.c
//  Ch2Example
//
//  Created by abel on 13-10-24.
//  Copyright (c) 2013年 abel. All rights reserved.
//

#include <stdio.h>

long int calculateFactorial(int value){
    long int result=1;
    for (int i=1;i<=value;++i){
        
        result=result*i;
    }
    return result;
}