//
//  ViewController.m
//  DisnatChartsDemoApp
//
//  Created by Guillaume Poirier on 2017-07-07.
//  Copyright © 2017 Desjardins. All rights reserved.
//

#import "ViewController.h"

static const NSString *kTypeKey = @"type";
static const NSString *kTitleKey = @"title";

@interface ViewController ()
@property (nonatomic) NSArray<NSDictionary *> *charts;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    _charts = @[
                @{ kTypeKey:[NSNumber numberWithInt:LineChart],
                   kTitleKey:@"Line chart" },
                @{ kTypeKey: [NSNumber numberWithInt:OHLCChart],
                   kTitleKey: @"OHLC chart"
                   }
                ];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.charts.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Charts";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCellIdentifier"];
    cell.textLabel.text = (NSString*)[self.charts[indexPath.row] objectForKey:kTitleKey];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([((NSNumber *)[self.charts[indexPath.row] objectForKey:kTypeKey]) intValue] == LineChart) {
        [self performSegueWithIdentifier:@"ShowLineChartViewController" sender:self];
    } else if([((NSNumber *)[self.charts[indexPath.row] objectForKey:kTypeKey]) intValue] == OHLCChart) {
        [self performSegueWithIdentifier:@"ShowLineChartViewController" sender:self];
    }
}


@end
