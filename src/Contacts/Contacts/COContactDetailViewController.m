
#import "COContactDetailViewController.h"

@interface COContactDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

@implementation COContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureView];
}

- (void)setEventDetail:(id)newDetailItem {
    if (_eventDetail != newDetailItem) {
        _eventDetail = newDetailItem;
        [self configureView];
    }
}


- (void)configureView {
    if (self.eventDetail) {
        self.detailDescriptionLabel.text = [[self.eventDetail valueForKey:@"timeStamp"] description];
    }
}

@end
