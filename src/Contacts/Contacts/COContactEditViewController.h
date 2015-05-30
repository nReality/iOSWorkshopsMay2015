
#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface COContactEditViewController : UIViewController <UINavigationBarDelegate>
@property (strong, nonatomic) id eventDetail;
@property (strong, nonatomic) NSManagedObjectContext *context;
@end
