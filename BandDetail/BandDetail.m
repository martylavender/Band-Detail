//
//  BandDetail.m
//  BandDetail
//
//  Created by Marty Lavender on 6/26/15.
//  Copyright (c) 2015 Marty Lavender. All rights reserved.
//

#import "BandDetail.h"

@interface BandDetail ()

@end

@implementation BandDetail

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	//_bandNameLabel.text = _bandName;
	self.title = _band.name;
	self.playTime.text = _band.playTime;
	self.bandPhoto.image = [UIImage imageNamed:_band.imageFile];
	
	NSMutableString *bandDescription = [NSMutableString string];
	for (NSString* description in _band.bandDescription) {
		[bandDescription appendFormat:@"%@\n", description];
	}
	self.bandDescriptionView.text = bandDescription;
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
