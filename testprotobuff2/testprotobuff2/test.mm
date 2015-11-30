//
//  test.m
//  testprotobuff2
//
//  Created by 万畅 on 15/11/17.
//  Copyright © 2015年 abelwan. All rights reserved.
// https://github.com/alexeyxo/protobuf-objc
// http://nixwang.com/2015/03/18/protocol-buffer-for-ios/

#import "test.h"
//#import "measurement.pb.h"
#import "Measurement.pb.h"

@implementation test

-(void)doSomething{
//    Measurement* measure = [[[[[Measurement builder] setSideA:true]
//                        setSideB:false]
//                       setImage:@"1,2,3"] build];
//    NSData* data = [measure data];


    Byte *byteArray = (Byte[]){10, 192, 1, 208, 23, 125, 210, 55, 125, 212, 87, 125, 214, 119, 125, 216, 151, 125, 218, 183, 125, 220, 215, 125, 222, 247, 125, 224, 23, 126, 226, 55, 126, 228, 87, 126, 230, 119, 126, 232, 151, 126, 234, 183, 126, 236, 215, 126, 238, 247, 126, 240, 23, 127, 242, 55, 127, 244, 87, 127, 246, 119, 127, 248, 151, 127, 250, 183, 127, 252, 215, 127, 254, 247, 127, 0, 24, 128, 2, 56, 128, 4, 88, 128, 6, 120, 128, 8, 152, 128, 10, 184, 128, 12, 216, 128, 14, 248, 128, 16, 24, 129, 18, 56, 129, 20, 88, 129, 22, 120, 129, 24, 152, 129, 26, 184, 129, 28, 216, 129, 30, 248, 129, 32, 24, 130, 34, 56, 130, 36, 88, 130, 38, 120, 130, 40, 152, 130, 42, 184, 130, 44, 216, 130, 46, 248, 130, 48, 24, 131, 50, 56, 131, 52, 88, 131, 54, 120, 131, 56, 152, 131, 58, 184, 131, 60, 216, 131, 62, 248, 131, 64, 24, 132, 66, 56, 132, 68, 88, 132, 70, 120, 132, 72, 152, 132, 74, 184, 132, 76, 216, 132, 78, 248, 132, 16, 1, 24, 0};


    NSMutableData *buffer = [NSMutableData data];
    [buffer appendBytes:byteArray length:199*sizeof(Byte)];

    //    int bitsLength = bits.length;
    //    NSLog(@"length=%d %d",bitsLength, bitsLength/8);
    //    for (int i = 0; i < bitsLength; i += 8) {
    //        char byte = 0;
    //        for (int bit = 0; bit < 8 && i + bit < bitsLength; bit++) {
    //
    //            char mychar = [bits characterAtIndex:i + bit];
    ////            NSLog(@"mychar %d", mychar == '0');
    //            if(mychar != '0') {
    //                byte += (1 << bit);
    //            }
    //        }
    //        [buffer appendBytes:&byte length:1];
    //
    //        NSLog(@"byte %d,#", (int)byte);
    //    }

    //    NSData* data = [NSData dataWithBytes:bytes length:sizeof(bytes)];
//    int len = [buffer length];
//    NSLog(@"%d",len);
//    char raw[len];
//    [buffer getBytes:raw length:len];
    //    measure.ParseFromArray(raw, len);
   Measurement*  measure = [Measurement parseFromData:buffer];

//    measure->ParseFromArray(raw, len);

}

@end
