//
//  BandDetail.h
//  BandDetail
//
//  Created by Marty Lavender on 6/26/15.
//  Copyright (c) 2015 Marty Lavender. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Band.h"

@interface BandDetail : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *bandNameLabel;
@property (nonatomic, strong) NSString *bandName;
@property (strong, nonatomic) IBOutlet UIImageView *bandPhoto;
@property (strong, nonatomic) IBOutlet UITextView *bandDescriptionView;
@property (strong, nonatomic) IBOutlet UILabel *playTime;

@property (nonatomic, strong) Band *band;


@end
