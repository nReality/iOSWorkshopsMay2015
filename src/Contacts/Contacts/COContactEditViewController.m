
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
        self.eventDetail = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass([COContact class]) inManagedObjectContext:self.context];
    }
    
    self.eventDetail.firstName = @"aaa";
    self.eventDetail.lastName = @"bb";
    
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
