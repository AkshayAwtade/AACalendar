//
//  ViewController.m
//  AACalendar
//
//  Created by AKSHAY AWTADE on 24/05/17.
//  Copyright © 2017 AKSHAY AWTADE. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableArray *arrayYears;
    NSMutableArray *monthArray;
}

@end

@implementation ViewController{
    enum monthName {January=1, February=2,March=3,April=4,May=5,June=6,July=7,August=8,September=9,October=10,November=11,December = 12};
}

- (void)viewDidLoad {
    [super viewDidLoad];
    arrayYears=[[NSMutableArray alloc]init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy"];
    int year = [[dateFormatter stringFromDate:[NSDate date]] intValue];
    NSLog(@"%d",year);
    NSDateFormatter *dateFormatterMonth = [[NSDateFormatter alloc] init];
    [dateFormatterMonth setDateFormat:@"mm"];
    int month = [[dateFormatterMonth stringFromDate:[NSDate date]] intValue];
    NSLog(@"%d",month);
    [self monthCalculation:month];

//    for(int inityear=1970;inityear<=2100;inityear++){
//        NSString *stringyear=[NSString stringWithFormat:@"%d",inityear];
//        [arrayYears addObject:stringyear];
//    }
//    NSLog(@"%@",arrayYears);
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)monthCalculation:(int)month{
//    NSDateFormatter *dateFormatterMonth = [[NSDateFormatter alloc] init];
//    [dateFormatterMonth setDateFormat:@"mm"];
//    int month = [[dateFormatterMonth stringFromDate:[NSDate date]] intValue];
//    NSLog(@"%d",month);
    NSString *monthName;
    switch (month) {
        case 1:
            monthName=@"January";
            break;
        case 2:
            monthName=@"February";
            break;
        case 3:
            monthName=@"March";
            break;
        case 4:
            monthName=@"April";
            break;
        case 5:
            monthName=@"May";
            break;
        case 6:
            monthName=@"June";
            break;
        case 7:
            monthName=@"July";
            break;
        case 8:
            monthName=@"August";
            break;
        case 9:
            monthName=@"September";
            break;
        case 10:
            monthName=@"October";
            break;
        case 11:
            monthName=@"November";
            break;
        case 12:
            monthName=@"December";
            break;
            
        default:
            break;
    }
    self.labelMonth.text=[NSString stringWithFormat:@"%@",monthName];
    
    
}
-(void)monthCalculation{
        NSDateFormatter *dateFormatterMonth = [[NSDateFormatter alloc] init];
        [dateFormatterMonth setDateFormat:@"mm"];
        int month = [[dateFormatterMonth stringFromDate:[NSDate date]] intValue];
        NSLog(@"%d",month);
    NSString *monthName;
    switch (month) {
        case 1:
            monthName=@"January";
            break;
        case 2:
            monthName=@"February";
            break;
        case 3:
            monthName=@"March";
            break;
        case 4:
            monthName=@"April";
            break;
        case 5:
            monthName=@"May";
            break;
        case 6:
            monthName=@"June";
            break;
        case 7:
            monthName=@"July";
            break;
        case 8:
            monthName=@"August";
            break;
        case 9:
            monthName=@"September";
            break;
        case 10:
            monthName=@"October";
            break;
        case 11:
            monthName=@"November";
            break;
        case 12:
            monthName=@"December";
            break;
            
        default:
            break;
    }
    self.labelMonth.text=[NSString stringWithFormat:@"%@",monthName];
    
    
}

- (IBAction)butTapped:(id)sender {
    [self monthCalculation];
}
@end
