
#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "COContact+Calculated.h"

@interface COContactEditViewController : UIViewController <UINavigationBarDelegate>
@property (strong, nonatomic) COContact *eventDetail;
@property (strong, nonatomic) NSManagedObjectContext *context;
@end
