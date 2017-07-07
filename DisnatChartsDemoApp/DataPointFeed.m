//
//  DataPointFeed.m
//  DisnatChartsDemoApp
//
//  Created by Guillaume Poirier on 2017-07-07.
//  Copyright © 2017 Desjardins. All rights reserved.
//

#import "DataPointFeed.h"

@interface DataPointFeed ()
@property (nonatomic) NSDateFormatter *dateFormatter;
@end

@implementation DataPointFeed

- (instancetype)init {
    if (self = [super init]) {
        _dateFormatter = [[NSDateFormatter alloc] init];
        _dateFormatter.dateFormat = @"YYYYMMDD HH:MM";
    }
    return self;
}

+ (DateValueFormatter *)dateTimeDateFormatter {
    return [[DateValueFormatter alloc] init];
}

+ (NSArray *)dataPoints {
    return [[NSArray alloc] init];
}

- (double)secondsFrom1970FromDateString:(NSString*)dateString {
    NSDate *date = [self.dateFormatter dateFromString:dateString];
    return
}

+ (instancetype)sharedInstance {
    static DataPointFeed *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[DataPointFeed alloc] init];
    });
    return sharedInstance;
}

@end
