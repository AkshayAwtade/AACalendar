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
    int month;
    NSMutableArray *daysOfMonth;
    int dayOffset;
    int yearOffset;
    int monthOffset;
    int centuaryOffset;
}

@end

@implementation ViewController{
   // enum monthName {January=1, February=2,March=3,April=4,May=5,June=6,July=7,August=8,September=9,October=10,November=11,December = 12};
}

- (void)viewDidLoad {
    [super viewDidLoad];
    arrayYears=[[NSMutableArray alloc]init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy"];
    int year = [[dateFormatter stringFromDate:[NSDate date]] intValue];
    NSLog(@"%d",year);
    self.labelYear.text=[NSString stringWithFormat:@"%d",year];
 //   NSDateFormatter *dateFormatterMonth = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MM"];
     month = [[dateFormatter stringFromDate:[NSDate date]] intValue];
    NSLog(@"%d",month);
    
    [self monthCalculation:month];

    daysOfMonth=[[NSMutableArray alloc]init];
    [self daysOfMonthCall];
    [self calculateday];
//    for(int inityear=1970;inityear<=2100;inityear++){
//        NSString *stringyear=[NSString stringWithFormat:@"%d",inityear];
//        [arrayYears addObject:stringyear];
//    }
//    NSLog(@"%@",arrayYears);
    // Do any additional setup after loading the view, typically from a nib.
}


-(void) daysOfMonthCall{
    int day;
    if(month==1){
        for(day=1;day<=31;day++){
            NSString *dayString=[NSString stringWithFormat:@"%d",day];
        [daysOfMonth addObject:dayString];
        }
    }
        else if(month==2){
            if((self.labelYear.text.intValue % 4) ==0){
            for(day=1;day<=29;day++){
                NSString *dayString=[NSString stringWithFormat:@"%d",day];
                [daysOfMonth addObject:dayString];
        }
            }else{
                for(day=1;day<=28;day++){
                    NSString *dayString=[NSString stringWithFormat:@"%d",day];
                    [daysOfMonth addObject:dayString];
                }
            }
    }
    
        else if(month==3){
            for(day=1;day<=31;day++){
                NSString *dayString=[NSString stringWithFormat:@"%d",day];
                [daysOfMonth addObject:dayString];
            }
        }
        else if(month==4){
            for(day=1;day<=30;day++){
                NSString *dayString=[NSString stringWithFormat:@"%d",day];
                [daysOfMonth addObject:dayString];
            }
        }
        else if(month==5){
            for(day=1;day<=31;day++){
                NSString *dayString=[NSString stringWithFormat:@"%d",day];
                [daysOfMonth addObject:dayString];
            }
        }
        else if(month==6){
            for(day=1;day<=30;day++){
                NSString *dayString=[NSString stringWithFormat:@"%d",day];
                [daysOfMonth addObject:dayString];
            }
        }
        else if(month==7){
            for(day=1;day<=31;day++){
                NSString *dayString=[NSString stringWithFormat:@"%d",day];
                [daysOfMonth addObject:dayString];
            }
        }
        else if(month==8){
            for(day=1;day<=31;day++){
                NSString *dayString=[NSString stringWithFormat:@"%d",day];
                [daysOfMonth addObject:dayString];
            }
        }
        else if(month==9){
            for(day=1;day<=30;day++){
                NSString *dayString=[NSString stringWithFormat:@"%d",day];
                [daysOfMonth addObject:dayString];
            }
        }
        else if(month==10){
            for(day=1;day<=31;day++){
                NSString *dayString=[NSString stringWithFormat:@"%d",day];
                [daysOfMonth addObject:dayString];
            }
        }
        else if(month==11){
            for(day=1;day<=30;day++){
                NSString *dayString=[NSString stringWithFormat:@"%d",day];
                [daysOfMonth addObject:dayString];
            }
        }
        else if(month==12){
            for(day=1;day<=31;day++){
                NSString *dayString=[NSString stringWithFormat:@"%d",day];
                [daysOfMonth addObject:dayString];
            }
        }


    NSLog(@"%@",daysOfMonth);


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)monthCalculation:(int)monthLocal{
    NSLog(@"%d",monthLocal);
    NSString *monthName;
    switch (monthLocal) {
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
    UIButton *button=sender;
    if(button.tag==90){
        self.labelYear.text=[NSString stringWithFormat:@"%d", _labelYear.text.intValue-1];
    } else if(button.tag==91){
         self.labelYear.text=[NSString stringWithFormat:@"%d", _labelYear.text.intValue+1];
    }else if(button.tag==92){
        NSLog(@"%d",month);
        if(![self.labelMonth.text isEqualToString:@"January"]){
        month=month-1;
            
            [self monthCalculation:month];
            [self.buttonNextMonth setEnabled:YES];
        }else{
     
            [button setEnabled:NO];
            //month=month+1;
        }
    } else if(button.tag==93){
          NSLog(@"%d",month);
        if(![self.labelMonth.text isEqualToString:@"December"]){
        month=month+1;
            [self.buttonPreviousMonth setEnabled:YES];
            [self monthCalculation:month];
        }else{
            [button setEnabled:NO];
        }
    }
    [self daysOfMonthCall];
    
}


-(void)calculateday{
    dayOffset= 1;
    NSString *string=[NSString stringWithFormat:@"%@",self.labelYear.text];
    string=[string substringToIndex:2];
    NSLog(@"%@",string);
    if([string isEqualToString:@"20"]){
        centuaryOffset=6;
    }else  if([string isEqualToString:@"19"]){
        centuaryOffset=0;
    }else  if([string isEqualToString:@"18"]){
        centuaryOffset=2;
    }else  if([string isEqualToString:@"17"]){
        centuaryOffset=4;
    }else  if([string isEqualToString:@"16"]){
        centuaryOffset=6;
    }else  if([string isEqualToString:@"21"]){
        centuaryOffset=4;
    }else  if([string isEqualToString:@"22"]){
        centuaryOffset=2;
    }
    NSString *string2=[string substringFromIndex:string.length-2];
    yearOffset=(string2.intValue+(string2.intValue/4))%7;
    if(month==1){
        monthOffset=0;
    }else if(month==2){
        monthOffset=2;
    }else if(month==3){
        monthOffset=2;
    }else if(month==4){
        monthOffset=6;
    }else if(month==5){
        monthOffset=1;
    }else if(month==6){
        monthOffset=4;
    }else if(month==7){
        monthOffset=6;
    }else if(month==8){
        monthOffset=2;
    }else if(month==9){
        monthOffset=5;
    }else if(month==10){
        monthOffset=0;
    }else if(month==11){
        monthOffset=3;
    }else if(month==12){
        monthOffset=5;
    }
    
    int dayOfmonthCalculation=dayOffset+monthOffset+yearOffset+centuaryOffset;
    ////////////////////
    ///find day if sun =0 rem if sat 7 rem
    ////////////////
    }
@end
