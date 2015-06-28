//
//  Band.h
//  BandDetail
//
//  Created by Marty Lavender on 6/27/15.
//  Copyright (c) 2015 Marty Lavender. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Band : UIViewController

@property (nonatomic, strong) NSString *name; //band name
@property (nonatomic, strong) NSString *imageFile; //cover art
@property (nonatomic, strong) NSString *playTime; //album playtime
@property (nonatomic, strong) NSArray *bandList; //list of bands
@property (nonatomic, strong) NSArray *bandDescription; //description of band

@end
