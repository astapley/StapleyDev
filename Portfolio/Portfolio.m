//
//  Portfolio.m
//  Portfolio
//
//  Created by Austin Stapley on 5/18/14.
//  Copyright (c) 2014 Stapley Development. All rights reserved.
//

#import "Portfolio.h"
#import "Transforms.h"

@interface Portfolio ()

@end

@implementation Portfolio

- (void)viewWillAppear:(BOOL)animated {
    [self.navigationItem setTitle:@"Portfolio"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.portfolioObjs = [NSArray arrayWithObjects:@"Transforms",
                                                   @"Blur Effects",
                                                   @"Motion Effects",
                                                   @"Container View Controller",
                                                   @"Dynamics",
                                                   nil];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
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
    return self.portfolioObjs.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"portfolioObjCells";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    [cell.textLabel setText:[self.portfolioObjs objectAtIndex:indexPath.row]];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return NO;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Transforms *view = [self.storyboard instantiateViewControllerWithIdentifier:[self.portfolioObjs objectAtIndex:indexPath.row]];
    [self.navigationController pushViewController:view animated:YES];
}


@end
