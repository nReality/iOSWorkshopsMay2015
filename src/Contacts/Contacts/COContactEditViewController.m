
#import "COContactEditViewController.h"

@interface COContactEditViewController ()
@property (weak, nonatomic) IBOutlet UINavigationBar *navigationBar;
@end

@implementation COContactEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.delegate = self;
    
}
- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (IBAction)done:(id)sender {
    [self addOrUpdateContact];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)addOrUpdateContact {
    if ([self isAddingNew]){
        NSManagedObject *newManagedObject = [NSEntityDescription insertNewObjectForEntityForName:@"Event" inManagedObjectContext:self.context];
        [newManagedObject setValue:[NSDate date] forKey:@"timeStamp"];
        
    }else{
        [self.eventDetail setValue:[NSDate date] forKey:@"timeStamp"];
    }
    
    NSError *error = nil;
    if (![self.context save:&error]) {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
}

-(BOOL)isAddingNew{
    return !self.eventDetail;
}

- (UIBarPosition)positionForBar:(id<UIBarPositioning>)bar
{
    return UIBarPositionTopAttached;//this will make sure the status bar background looks like the nav bar
}
@end
