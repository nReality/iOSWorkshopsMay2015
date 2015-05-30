
#import "COContactDetailViewController.h"
#import "COContactEditViewController.h"

@interface COContactDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *phoneNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *fullNameLabel;
@end

@implementation COContactDetailViewController
static NSString *editContactSegue = @"editContact";

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
    [self performSegueWithIdentifier:editContactSegue sender:self];
}

- (void)setEventDetail:(id)newDetailItem {
    if (_eventDetail != newDetailItem) {
        _eventDetail = newDetailItem;
        [self configureView];
    }
}

- (void)configureView {
    if (self.eventDetail) {
        self.fullNameLabel.text = self.eventDetail.fullName;
        self.phoneNumberLabel.text = self.eventDetail.phoneNumber;    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:editContactSegue]) {
        [[segue destinationViewController] setEventDetail: self.eventDetail];
        [[segue destinationViewController] setContext:self.eventDetail.managedObjectContext];
    }
}

@end