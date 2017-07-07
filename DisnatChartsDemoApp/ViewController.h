//
//  ViewController.h
//  DisnatChartsDemoApp
//
//  Created by Guillaume Poirier on 2017-07-07.
//  Copyright © 2017 Desjardins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UITableViewController


@end

typedef enum : NSUInteger {
    LineChart,
    OHLCChart
} ChartType;

