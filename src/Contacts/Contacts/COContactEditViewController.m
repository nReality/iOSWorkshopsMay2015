
#import "COContactEditViewController.h"

@interface COContactEditViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *lastNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *phoneNumberLabel;
@property (weak, nonatomic) IBOutlet UINavigationBar *navigationBar;
@end

@implementation COContactEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.delegate = self;
    [self setViewFromModel];
    
}
- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (IBAction)done:(id)sender {
    [self addOrUpdateContact];
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)setViewFromModel{
    self.firstNameLabel.text = self.eventDetail.firstName;
    self.lastNameLabel.text = self.eventDetail.lastName;
    self.phoneNumberLabel.text = self.eventDetail.phoneNumber;
}

-(void)setModelFromView{
    self.eventDetail.firstName = self.firstNameLabel.text;
    self.eventDetail.lastName =  self.lastNameLabel.text;
    self.eventDetail.phoneNumber =  self.phoneNumberLabel.text;
    NSError *error = nil;
    if (![self.context save:&error]) {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
}

- (void)addOrUpdateContact {
    if ([self isAddingNew]){
        self.eventDetail = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass([COContact class]) inManagedObjectContext:self.context];
    }
    
    [self setModelFromView];
}

-(BOOL)isAddingNew{
    return !self.eventDetail;
}

- (UIBarPosition)positionForBar:(id<UIBarPositioning>)bar
{
    return UIBarPositionTopAttached;//this will make sure the status bar background looks like the nav bar
}
@end
