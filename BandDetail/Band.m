//
//  Band.m
//  BandDetail
//
//  Created by Marty Lavender on 6/27/15.
//  Copyright (c) 2015 Marty Lavender. All rights reserved.
//

#import "Band.h"

@interface Band ()

@end

@implementation Band {
	NSArray *bands;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	Band *band1 = [Band new];
	band1.name = @"Beach Boys";
	band1.imageFile = @"beachboys.jpg";
	
	Band *band2 = [Band new];
	band2.name = @"Chicago";
	band2.imageFile = @"chicago.jpg";
	
	Band *band3 = [Band new];
	band3.name = @"Blue Swede";
	band3.imageFile = @"blueswede.jpg";
	
	Band *band4 = [Band new];
	band4.name = @"Aerosmith";
	band4.imageFile = @"aerosmith.jpg";
	
	Band *band5 = [Band new];
	band5.name = @"Foo Fighters";
	band5.imageFile = @"foofighters.jpg";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
