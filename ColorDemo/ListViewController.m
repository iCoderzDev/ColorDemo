//
//  ListViewController.m
//  ColorDemo
//
//  Created by iCoderz_09 on 11/09/18.
//  Copyright © 2018 iCoderz_09. All rights reserved.
//

#import "ListViewController.h"
#import "ListCell.h"
#import "UIColor+Chameleon.h"

@interface ListViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tblView;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"News";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 110;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ListCell *cell = (ListCell *)[tableView dequeueReusableCellWithIdentifier:@"ListCell" forIndexPath:indexPath];
    
    
    
    switch (indexPath.row) {
        case 0:
            cell.viewContainerBack.backgroundColor = [UIColor flatRedColor];
            break;
        case 1:
            cell.viewContainerBack.backgroundColor = [UIColor flatWatermelonColor];
            break;
        case 2:
            cell.viewContainerBack.backgroundColor = [UIColor flatMintColor];
            break;
        case 3:
            cell.viewContainerBack.backgroundColor = [UIColor flatOrangeColor];
            break;
        case 4:
            cell.viewContainerBack.backgroundColor = [UIColor flatLimeColor];
            break;
            
        default:
            break;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"slidetonewsdetail" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"slidetonewsdetail"])
    {
        
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
