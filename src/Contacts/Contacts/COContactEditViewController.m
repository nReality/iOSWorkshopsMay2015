
#import "COContactEditViewController.h"

@interface COContactEditViewController ()

@end

@implementation COContactEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Add";
    
}
- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
