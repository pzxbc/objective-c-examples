#import <foundation/foundation.h>

@interface FatObject : NSObject
@end

@implementation FatObject

- (void)dealloc
{
    NSLog(@"FatObject dealloc");
    [super dealloc];
}

@end

int main(int argc, char *argv[])
{
    id obj = [[FatObject alloc] init];
    NSLog(@"obj reference count after alloc: %tu", [obj retainCount]);
    [obj retain];
    NSLog(@"obj reference count after retain: %tu", [obj retainCount]);
    [obj release];
    NSLog(@"obj reference count after release: %tu", [obj retainCount]);
    [obj release];
    return 0;
}
