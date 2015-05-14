//
//  ContactsViewController.m
//  contacts
//
//  Created by jacdevos on 2015/05/12.
//  Copyright (c) 2015 nreality. All rights reserved.
//

#import "ContactsViewController.h"
#import "ViewController.h"

@interface ContactsViewController ()
@property (strong, nonatomic) ViewController *child;
@end

@implementation ContactsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clicked:(id)sender {
    [self performSegueWithIdentifier:@"segueToDetails" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.destinationViewController isKindOfClass:[ViewController class]]){
        self.child = (ViewController *)segue.destinationViewController;
        //set object here
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
