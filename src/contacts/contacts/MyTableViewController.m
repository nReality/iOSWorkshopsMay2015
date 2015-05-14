//
//  MyTableViewController.m
//  contacts
//
//  Created by jacdevos on 2015/05/13.
//  Copyright (c) 2015 nreality. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()
@property (strong,nonatomic) NSArray *list;
@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.list = @[@"one",@"two"];
}


#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.list.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.list objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = @"detail";
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row % 2 == 0){
        [self performSegueWithIdentifier:@"myPushSegue" sender:self];
    }
}





#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //segue.destinationViewController
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
