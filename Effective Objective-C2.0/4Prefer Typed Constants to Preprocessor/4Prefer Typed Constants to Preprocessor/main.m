#import <Foundation/Foundation.h>

#define ANIMATION_DURATION 0.3

// better way:
static const  NSTimeInterval kAminationDuration = 0.3;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!, %f", kAminationDuration);
    }
    return 0;
}
