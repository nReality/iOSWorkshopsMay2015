
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

- (void)setContact:(id)newDetailItem {
    if (_contact != newDetailItem) {
        _contact = newDetailItem;
        [self configureView];
    }
}

- (void)configureView {
    if (self.contact) {
        self.fullNameLabel.text = self.contact.fullName;
        self.phoneNumberLabel.text = self.contact.phoneNumber;    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:editContactSegue]) {
        [[segue destinationViewController] setContact: self.contact];
        [[segue destinationViewController] setContext:self.contact.managedObjectContext];
    }
}

@end