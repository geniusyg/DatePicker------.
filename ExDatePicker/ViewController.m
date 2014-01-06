//
//  ViewController.m
//  ExDatePicker
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UITextField *yearf;
@property (weak, nonatomic) IBOutlet UITextField *monthf;
@property (weak, nonatomic) IBOutlet UITextField *dayf;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)pickerChanged:(id)sender {
	NSLog(@"pickerChanged");
	NSDate *sd = self.datePicker.date;
	
	NSCalendar *calendar = [NSCalendar currentCalendar];
	NSInteger flag = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit;
	NSDateComponents *comp = [calendar components:flag fromDate:sd];
	self.yearf.text = [NSString stringWithFormat:@"%d", [comp year]];
	self.monthf.text = [NSString stringWithFormat:@"%d", [comp month]];
	self.dayf.text = [NSString stringWithFormat:@"%d", [comp day]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
