//
//  ViewController.m
//  BandDetail
//
//  Created by Marty Lavender on 6/26/15.
//  Copyright (c) 2015 Marty Lavender. All rights reserved.
//

#import "ViewController.h"
#import "BandDetail.h"
#import "Band.h"

@interface ViewController ()

@end

@implementation ViewController {
	NSArray *bands;
	NSArray *searchResults;
}

- (void)viewDidLoad
{
	[super viewDidLoad];
	// Initialize table data
 //   recipes = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
	
	Band *band1 = [Band new];
	band1.name = @"Chicago";
	band1.playTime = @"30:00";
	band1.imageFile = @"chicago.png";
	band1.bandDescription = [NSArray arrayWithObjects:@"Album Description", nil];
	
	Band *band2 = [Band new];
	band2.name = @"Led Zeppelin";
	band2.playTime = @"30:00";
	band2.imageFile = @"ledzeppelin.png";
	band2.bandDescription = [NSArray arrayWithObjects:@"Album Description", nil];
	
	Band *band3 = [Band new];
	band3.name = @"Blue Swede";
	band3.playTime = @"30:00";
	band3.imageFile = @"blueswede.png";
	band3.bandDescription = [NSArray arrayWithObjects:@"Album Description", nil];
	
	Band *band4 = [Band new];
	band4.name = @"Aerosmith";
	band4.playTime = @"30:00";
	band4.imageFile = @"aerosmith.png";
	band4.bandDescription = [NSArray arrayWithObjects:@"Album Description", nil];
	
	bands = [NSArray arrayWithObjects:band1, band2, band3, band4, nil];
}


- (void)viewDidUnload
{
	[super viewDidUnload];
	// Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [bands count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *simpleTableIdentifier = @"BandCell";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
	
	if (cell == nil) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
	}
	
	Band *bandList = [bands objectAtIndex:indexPath.row];
	cell.textLabel.text = bandList.name;
	
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	//Change the selected background view of the cell.
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([segue.identifier isEqualToString:@"showBandDetail"]) {
		NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
		BandDetail *destViewController = segue.destinationViewController;
		destViewController.band = [bands objectAtIndex:indexPath.row];
		
		// Hide bottom tab bar in the detail view
		//   destViewController.hidesBottomBarWhenPushed = YES;
	}
}


@end
