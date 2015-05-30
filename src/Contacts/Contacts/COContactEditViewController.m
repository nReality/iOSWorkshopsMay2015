
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
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (UIBarPosition)positionForBar:(id<UIBarPositioning>)bar
{
    return UIBarPositionTopAttached;//this will make sure the status bar background looks like the nav bar
}


@end
