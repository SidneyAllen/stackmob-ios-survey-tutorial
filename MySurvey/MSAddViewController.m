//
//  MSAddViewController.m
//  MySurvey
//
//  Created by Sidney Maestre on 2/21/13.
//  Copyright (c) 2013 Sidney Maestre. All rights reserved.
//

#import "MSAddViewController.h"
#import "MSAppDelegate.h"
#import "MSUserForm.h"

@interface MSAddViewController ()

@property (strong, nonatomic) MSUserForm *form;

@end

@implementation MSAddViewController

- (id)init
{
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self)
    {
        self.form = [[MSUserForm alloc] init];
        [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CELL"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.form.fields.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL"];
    
    UITextField *field              = [self.form.fields objectAtIndex:indexPath.row];
    field.frame                     = CGRectInset(cell.bounds, 30.0f, 5.0f);
    field.contentVerticalAlignment  = UIControlContentVerticalAlignmentCenter;
    
    [cell addSubview:field];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 60.0f;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectZero];
    footerView.backgroundColor = [UIColor clearColor];
    
    UIButton *submit            = [UIButton buttonWithType:UIButtonTypeCustom];
    submit.frame                = CGRectMake(10.0f, 10.0f, self.tableView.bounds.size.width - 20.0f, 40.0f);
    submit.clipsToBounds        = YES;
    submit.titleLabel.font      = [UIFont systemFontOfSize:22.0f];
    submit.backgroundColor      = [UIColor colorWithRed:255.0f green:255.0f blue:255.0f alpha:0.5];
    
    [submit setTitle:@"Submit" forState:UIControlStateNormal];
    [submit setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [submit addTarget:self action:@selector(saveNewItem:) forControlEvents:UIControlEventTouchUpInside];
    
    [footerView addSubview:submit];
    
    return footerView;
}
#pragma mark - Save Actions -
- (void)saveNewItem:(id)sender
{
    if(self.form.isValid)
    {
        NSString *firstname     = [self.form.form valueForField:@"firstname"];
        NSString *lastname   = [self.form.form valueForField:@"lastname"];
        NSString *email      = [self.form.form valueForField:@"email"];
        NSString *username      = [self.form.form valueForField:@"username"];
       
        NSLog(@"firstname:%@ lastname:%@ email:%@  username:%@",firstname,lastname,email,username);
        
    } else {
        NSLog(@"Error! in your form");
    }
}

@end
