
#import "COContactDetailViewController.h"
#import "COContactEditViewController.h"

@interface COContactDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

@implementation COContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *editButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(edit:)];
    self.navigationItem.rightBarButtonItem = editButton;
    [self configureView];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
     [self configureView];
}

- (void)edit:(id)sender {
    [self performSegueWithIdentifier:@"editContact" sender:self];
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"editContact"]) {
        [[segue destinationViewController] setContext:self.eventDetail.managedObjectContext];
    }
}

@end
