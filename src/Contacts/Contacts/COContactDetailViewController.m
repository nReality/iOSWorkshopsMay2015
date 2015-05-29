
#import "COContactDetailViewController.h"

@interface COContactDetailViewController ()

@end

@implementation COContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureView];
}

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        [self configureView];
    }
}


- (void)configureView {
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [[self.detailItem valueForKey:@"timeStamp"] description];
    }
}

@end
