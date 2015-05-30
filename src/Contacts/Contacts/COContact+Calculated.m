
#import "COContact+Calculated.h"

@implementation COContact (Calculated)
-(NSString *)fullName{
    return [NSString stringWithFormat:@"%@ %@",self.firstName,self.lastName];
}
@end
