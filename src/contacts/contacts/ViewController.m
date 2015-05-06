
#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)onMyButtonTapped:(id)sender {
    self.firstNameLabel.text = @"Clicked";
}

@end
