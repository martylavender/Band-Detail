//
//  ViewController.h
//  BandDetail
//
//  Created by Marty Lavender on 6/26/15.
//  Copyright (c) 2015 Marty Lavender. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITableView *tableView;


@end

