//
//  DataPointFeed.h
//  DisnatChartsDemoApp
//
//  Created by Guillaume Poirier on 2017-07-07.
//  Copyright © 2017 Desjardins. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DateValueFormatter.h"

@interface DataPointFeed : NSObject

+ (instancetype)sharedInstance;
+ (DateValueFormatter*)dateTimeDateFormatter;
+ (NSArray*)dataPoints;
+ (double)secondsFrom1970FromDateString:(NSString*)dateString;

@end


