//
//  ViewController.m
//  Day13
//
//  Created by Miguel Moreno on 18/10/2013.
//  Copyright (c) 2013 Miguel Moreno. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSArray *itemsArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSDictionary *itemOne = @{ @"name" : @"item one", @"id" : @1};
    NSDictionary *itemTwo = @{ @"name" : @"item two", @"id" : @2};
    NSDictionary *itemThree = @{ @"name" : @"item three", @"id" : @3};
    NSDictionary *itemFour = @{ @"name" : @"item four", @"id" : @4};
    NSDictionary *itemFive = @{ @"name" : @"item five", @"id" : @5};
    NSDictionary *itemSix = @{ @"name" : @"item six", @"id" : @6};
    NSDictionary *itemSeven = @{ @"name" : @"item seven", @"id" : @7};
    NSDictionary *itemEight = @{ @"name" : @"item eight", @"id" : @8};
    NSDictionary *itemNine = @{ @"name" : @"item nine", @"id" : @9};
    NSDictionary *itemTen = @{ @"name" : @"item ten", @"id" : @10};
    NSDictionary *itemEleven = @{ @"name" : @"item eleven", @"id" : @11};
    NSDictionary *itemTwelve = @{ @"name" : @"item twelve", @"id" : @12};
    NSDictionary *itemThirteen = @{ @"name" : @"item thirteen", @"id" : @13};
    itemsArray = [[NSMutableArray alloc] initWithObjects:itemOne, itemTwo,
                  itemThree, itemFour, itemFive, itemSix, itemSeven, itemEight,
                  itemNine, itemTen, itemEleven, itemTwelve, itemThirteen, nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [itemsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    NSDictionary *item =[itemsArray objectAtIndex:[indexPath row]];
    
    UILabel *labelOne = (UILabel *)[cell viewWithTag:1];
    UILabel *labelTwo = (UILabel *)[cell viewWithTag:2];
    
    labelOne.text = [item objectForKey:@"name"];
    labelTwo.text = [(NSNumber *)[item objectForKey:@"id"] stringValue];
    
    //cell.textLabel.text = [item objectForKey:@"name"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Row tapped at %i", [indexPath row]);
}
@end
