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
    int day1;
    NSMutableArray *daysOfMonth;
    int dayOffset;
    int yearOffset;
    int monthOffset;
    int centuaryOffset;
    NSString *dayString;
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
    [dateFormatter setDateFormat:@"dd"];
    int day = [[dateFormatter stringFromDate:[NSDate date]] intValue];
    day1=day;
    [self monthCalculation:month];
    daysOfMonth=[[NSMutableArray alloc]init];
  //  [self daysOfMonthCall];
    [self calculateday];
    self.labelDate.text=[NSString stringWithFormat:@"%@ %d %@",self.labelMonth.text,day,self.labelYear.text];
//    for(int inityear=1970;inityear<=2100;inityear++){
//        NSString *stringyear=[NSString stringWithFormat:@"%d",inityear];
//        [arrayYears addObject:stringyear];
//    }
//    NSLog(@"%@",arrayYears);
    // Do any additional setup after loading the view, typically from a nib.
}

//
//-(void) daysOfMonthCall{
//    int day;
//    if(month==1){
//        for(day=1;day<=31;day++){
//            [daysOfMonth removeAllObjects];
//            dayString=[NSString stringWithFormat:@"%d",day];
//        [daysOfMonth addObject:dayString];
//        }
//    }
//        else if(month==2){
//                        [daysOfMonth removeAllObjects];
//            if((self.labelYear.text.intValue % 4) ==0){
//            for(day=1;day<=29;day++){
//                dayString=[NSString stringWithFormat:@"%d",day];
//                [daysOfMonth addObject:dayString];
//        }
//            }else{
//                for(day=1;day<=28;day++){
//                    dayString=[NSString stringWithFormat:@"%d",day];
//                    [daysOfMonth addObject:dayString];
//                }
//            }
//    }
//    
//        else if(month==3){
//                        [daysOfMonth removeAllObjects];
//            for(day=1;day<=31;day++){
//                dayString=[NSString stringWithFormat:@"%d",day];
//                [daysOfMonth addObject:dayString];
//            }
//        }
//        else if(month==4){
//                        [daysOfMonth removeAllObjects];
//            for(day=1;day<=30;day++){
//                dayString=[NSString stringWithFormat:@"%d",day];
//                [daysOfMonth addObject:dayString];
//            }
//        }
//        else if(month==5){
//                        [daysOfMonth removeAllObjects];
//            for(day=1;day<=31;day++){
//                dayString=[NSString stringWithFormat:@"%d",day];
//                [daysOfMonth addObject:dayString];
//            }
//        }
//        else if(month==6){
//                        [daysOfMonth removeAllObjects];
//            for(day=1;day<=30;day++){
//                dayString=[NSString stringWithFormat:@"%d",day];
//                [daysOfMonth addObject:dayString];
//            }
//        }
//        else if(month==7){
//                        [daysOfMonth removeAllObjects];
//            for(day=1;day<=31;day++){
//                dayString=[NSString stringWithFormat:@"%d",day];
//                [daysOfMonth addObject:dayString];
//            }
//        }
//        else if(month==8){
//                        [daysOfMonth removeAllObjects];
//            for(day=1;day<=31;day++){
//                dayString=[NSString stringWithFormat:@"%d",day];
//                [daysOfMonth addObject:dayString];
//            }
//        }
//        else if(month==9){
//                        [daysOfMonth removeAllObjects];
//            for(day=1;day<=30;day++){
//                dayString=[NSString stringWithFormat:@"%d",day];
//                [daysOfMonth addObject:dayString];
//            }
//        }
//        else if(month==10){
//                        [daysOfMonth removeAllObjects];
//            for(day=1;day<=31;day++){
//                dayString=[NSString stringWithFormat:@"%d",day];
//                [daysOfMonth addObject:dayString];
//            }
//        }
//        else if(month==11){
//                        [daysOfMonth removeAllObjects];
//            for(day=1;day<=30;day++){
//                dayString=[NSString stringWithFormat:@"%d",day];
//                [daysOfMonth addObject:dayString];
//            }
//        }
//        else if(month==12){
//                        [daysOfMonth removeAllObjects];
//            for(day=1;day<=31;day++){
//                dayString=[NSString stringWithFormat:@"%d",day];
//                [daysOfMonth addObject:dayString];
//            }
//        }
//
//
//    NSLog(@"%@",daysOfMonth);
//
//
//}
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
                self.labelDate.text=[NSString stringWithFormat:@"%@ %d %@",self.labelMonth.text,day1,self.labelYear.text];
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
    [self selectDate:button];
  //  [self daysOfMonthCall];
    [self calculateday];
    self.labelDate.text=[NSString stringWithFormat:@"%@ %@ %@",self.labelMonth.text,button.titleLabel.text,self.labelYear.text];
    
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
    
    NSString *string2=[NSString stringWithFormat:@"%@",self.labelYear.text];
    string2=[string2 substringFromIndex:string2.length-2];
    yearOffset=(string2.intValue+(string2.intValue/4))%7;
    if(month==1){
        monthOffset=0;
    }else if(month==2){
        monthOffset=3;
    }else if(month==3){
        monthOffset=3;
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
    int calculatedDay=dayOfmonthCalculation % 7;
    if(calculatedDay==0){
        dayString=@"sun";
    }else if(calculatedDay==1){
        dayString=@"mon";
    }else if(calculatedDay==2){
        dayString=@"tue";
    }else if(calculatedDay==3){
        dayString=@"wed";
    }else if(calculatedDay==4){
        dayString=@"thu";
    }else if(calculatedDay==5){
        dayString=@"fri";
    }else if(calculatedDay==6){
        dayString=@"sat";
    }
    NSLog(@"%@",dayString);
    [self displayCalendar:dayString];
    }

-(void)displayCalendar:(NSString *)day {
//    int i = 0;
    if([day isEqualToString:@"sun"]){
        if(month==1 || month ==3 ||month==5 || month==7 || month==8 || month== 10|| month==12){
        [self.but1 setTitle:@"1" forState:UIControlStateNormal];
        [self.but2 setTitle:@"2" forState:UIControlStateNormal];
        [self.but3 setTitle:@"3" forState:UIControlStateNormal];
        [self.but4 setTitle:@"4" forState:UIControlStateNormal];
        [self.but5 setTitle:@"5" forState:UIControlStateNormal];
        [self.but6 setTitle:@"6" forState:UIControlStateNormal];
        [self.but7 setTitle:@"7" forState:UIControlStateNormal];
        [self.but8 setTitle:@"8" forState:UIControlStateNormal];
        [self.but9 setTitle:@"9" forState:UIControlStateNormal];
        [self.but10 setTitle:@"10" forState:UIControlStateNormal];
        [self.but11 setTitle:@"11" forState:UIControlStateNormal];
        [self.but12 setTitle:@"12" forState:UIControlStateNormal];
        [self.but13 setTitle:@"13" forState:UIControlStateNormal];
        [self.but14 setTitle:@"14" forState:UIControlStateNormal];
        [self.but15 setTitle:@"15" forState:UIControlStateNormal];
        [self.but16 setTitle:@"16" forState:UIControlStateNormal];
        [self.but17 setTitle:@"17" forState:UIControlStateNormal];
        [self.but18 setTitle:@"18" forState:UIControlStateNormal];
        [self.but19 setTitle:@"19" forState:UIControlStateNormal];
        [self.but20 setTitle:@"20" forState:UIControlStateNormal];
        [self.but21 setTitle:@"21" forState:UIControlStateNormal];
        [self.but22 setTitle:@"22" forState:UIControlStateNormal];
        [self.but23 setTitle:@"23" forState:UIControlStateNormal];
        [self.but24 setTitle:@"24" forState:UIControlStateNormal];
        [self.but25 setTitle:@"25" forState:UIControlStateNormal];
        [self.but26 setTitle:@"26" forState:UIControlStateNormal];
        [self.but27 setTitle:@"27" forState:UIControlStateNormal];
        [self.but28 setTitle:@"28" forState:UIControlStateNormal];
        [self.but29 setTitle:@"29" forState:UIControlStateNormal];
        [self.but30 setTitle:@"30" forState:UIControlStateNormal];
        [self.but31 setTitle:@"31" forState:UIControlStateNormal];
        [self.but32 setTitle:@"" forState:UIControlStateNormal];
        [self.but33 setTitle:@""forState:UIControlStateNormal];
        [self.but34 setTitle:@"" forState:UIControlStateNormal];
        [self.but35 setTitle:@"" forState:UIControlStateNormal];
        }else if (month==4 ||month== 6 || month== 9 || month==11){
            [self.but1 setTitle:@"1" forState:UIControlStateNormal];
            [self.but2 setTitle:@"2" forState:UIControlStateNormal];
            [self.but3 setTitle:@"3" forState:UIControlStateNormal];
            [self.but4 setTitle:@"4" forState:UIControlStateNormal];
            [self.but5 setTitle:@"5" forState:UIControlStateNormal];
            [self.but6 setTitle:@"6" forState:UIControlStateNormal];
            [self.but7 setTitle:@"7" forState:UIControlStateNormal];
            [self.but8 setTitle:@"8" forState:UIControlStateNormal];
            [self.but9 setTitle:@"9" forState:UIControlStateNormal];
            [self.but10 setTitle:@"10" forState:UIControlStateNormal];
            [self.but11 setTitle:@"11" forState:UIControlStateNormal];
            [self.but12 setTitle:@"12" forState:UIControlStateNormal];
            [self.but13 setTitle:@"13" forState:UIControlStateNormal];
            [self.but14 setTitle:@"14" forState:UIControlStateNormal];
            [self.but15 setTitle:@"15" forState:UIControlStateNormal];
            [self.but16 setTitle:@"16" forState:UIControlStateNormal];
            [self.but17 setTitle:@"17" forState:UIControlStateNormal];
            [self.but18 setTitle:@"18" forState:UIControlStateNormal];
            [self.but19 setTitle:@"19" forState:UIControlStateNormal];
            [self.but20 setTitle:@"20" forState:UIControlStateNormal];
            [self.but21 setTitle:@"21" forState:UIControlStateNormal];
            [self.but22 setTitle:@"22" forState:UIControlStateNormal];
            [self.but23 setTitle:@"23" forState:UIControlStateNormal];
            [self.but24 setTitle:@"24" forState:UIControlStateNormal];
            [self.but25 setTitle:@"25" forState:UIControlStateNormal];
            [self.but26 setTitle:@"26" forState:UIControlStateNormal];
            [self.but27 setTitle:@"27" forState:UIControlStateNormal];
            [self.but28 setTitle:@"28" forState:UIControlStateNormal];
            [self.but29 setTitle:@"29" forState:UIControlStateNormal];
            [self.but30 setTitle:@"30" forState:UIControlStateNormal];
            [self.but31 setTitle:@"" forState:UIControlStateNormal];
            [self.but32 setTitle:@"" forState:UIControlStateNormal];
            [self.but33 setTitle:@""forState:UIControlStateNormal];
            [self.but34 setTitle:@"" forState:UIControlStateNormal];
            [self.but35 setTitle:@"" forState:UIControlStateNormal];
      
        
        }else if(month== 2){
            if(daysOfMonth.count==28){
                
            [self.but1 setTitle:@"1" forState:UIControlStateNormal];
            [self.but2 setTitle:@"2" forState:UIControlStateNormal];
            [self.but3 setTitle:@"3" forState:UIControlStateNormal];
            [self.but4 setTitle:@"4" forState:UIControlStateNormal];
            [self.but5 setTitle:@"5" forState:UIControlStateNormal];
            [self.but6 setTitle:@"6" forState:UIControlStateNormal];
            [self.but7 setTitle:@"7" forState:UIControlStateNormal];
            [self.but8 setTitle:@"8" forState:UIControlStateNormal];
            [self.but9 setTitle:@"9" forState:UIControlStateNormal];
            [self.but10 setTitle:@"10" forState:UIControlStateNormal];
            [self.but11 setTitle:@"11" forState:UIControlStateNormal];
            [self.but12 setTitle:@"12" forState:UIControlStateNormal];
            [self.but13 setTitle:@"13" forState:UIControlStateNormal];
            [self.but14 setTitle:@"14" forState:UIControlStateNormal];
            [self.but15 setTitle:@"15" forState:UIControlStateNormal];
            [self.but16 setTitle:@"16" forState:UIControlStateNormal];
            [self.but17 setTitle:@"17" forState:UIControlStateNormal];
            [self.but18 setTitle:@"18" forState:UIControlStateNormal];
            [self.but19 setTitle:@"19" forState:UIControlStateNormal];
            [self.but20 setTitle:@"20" forState:UIControlStateNormal];
            [self.but21 setTitle:@"21" forState:UIControlStateNormal];
            [self.but22 setTitle:@"22" forState:UIControlStateNormal];
            [self.but23 setTitle:@"23" forState:UIControlStateNormal];
            [self.but24 setTitle:@"24" forState:UIControlStateNormal];
            [self.but25 setTitle:@"25" forState:UIControlStateNormal];
            [self.but26 setTitle:@"26" forState:UIControlStateNormal];
            [self.but27 setTitle:@"27" forState:UIControlStateNormal];
            [self.but28 setTitle:@"28" forState:UIControlStateNormal];
            [self.but29 setTitle:@"" forState:UIControlStateNormal];
            [self.but30 setTitle:@"" forState:UIControlStateNormal];
            [self.but31 setTitle:@"" forState:UIControlStateNormal];
            [self.but32 setTitle:@"" forState:UIControlStateNormal];
            [self.but33 setTitle:@""forState:UIControlStateNormal];
            [self.but34 setTitle:@"" forState:UIControlStateNormal];
            [self.but35 setTitle:@"" forState:UIControlStateNormal];
            }
            else{
                [self.but1 setTitle:@"1" forState:UIControlStateNormal];
                [self.but2 setTitle:@"2" forState:UIControlStateNormal];
                [self.but3 setTitle:@"3" forState:UIControlStateNormal];
                [self.but4 setTitle:@"4" forState:UIControlStateNormal];
                [self.but5 setTitle:@"5" forState:UIControlStateNormal];
                [self.but6 setTitle:@"6" forState:UIControlStateNormal];
                [self.but7 setTitle:@"7" forState:UIControlStateNormal];
                [self.but8 setTitle:@"8" forState:UIControlStateNormal];
                [self.but9 setTitle:@"9" forState:UIControlStateNormal];
                [self.but10 setTitle:@"10" forState:UIControlStateNormal];
                [self.but11 setTitle:@"11" forState:UIControlStateNormal];
                [self.but12 setTitle:@"12" forState:UIControlStateNormal];
                [self.but13 setTitle:@"13" forState:UIControlStateNormal];
                [self.but14 setTitle:@"14" forState:UIControlStateNormal];
                [self.but15 setTitle:@"15" forState:UIControlStateNormal];
                [self.but16 setTitle:@"16" forState:UIControlStateNormal];
                [self.but17 setTitle:@"17" forState:UIControlStateNormal];
                [self.but18 setTitle:@"18" forState:UIControlStateNormal];
                [self.but19 setTitle:@"19" forState:UIControlStateNormal];
                [self.but20 setTitle:@"20" forState:UIControlStateNormal];
                [self.but21 setTitle:@"21" forState:UIControlStateNormal];
                [self.but22 setTitle:@"22" forState:UIControlStateNormal];
                [self.but23 setTitle:@"23" forState:UIControlStateNormal];
                [self.but24 setTitle:@"24" forState:UIControlStateNormal];
                [self.but25 setTitle:@"25" forState:UIControlStateNormal];
                [self.but26 setTitle:@"26" forState:UIControlStateNormal];
                [self.but27 setTitle:@"27" forState:UIControlStateNormal];
                [self.but28 setTitle:@"28" forState:UIControlStateNormal];
                [self.but29 setTitle:@"29" forState:UIControlStateNormal];
                [self.but30 setTitle:@"" forState:UIControlStateNormal];
                [self.but31 setTitle:@"" forState:UIControlStateNormal];
                [self.but32 setTitle:@"" forState:UIControlStateNormal];
                [self.but33 setTitle:@""forState:UIControlStateNormal];
                [self.but34 setTitle:@"" forState:UIControlStateNormal];
                [self.but35 setTitle:@"" forState:UIControlStateNormal];
            }
        }
    }else if ([day isEqualToString:@"mon"]){
         if(month==1 || month ==3 ||month==5 || month==7 || month==8 || month== 10|| month==12){
        [self.but1 setTitle:@"" forState:UIControlStateNormal];
        [self.but2 setTitle:@"1" forState:UIControlStateNormal];
        [self.but3 setTitle:@"2" forState:UIControlStateNormal];
        [self.but4 setTitle:@"3" forState:UIControlStateNormal];
        [self.but5 setTitle:@"4" forState:UIControlStateNormal];
        [self.but6 setTitle:@"5" forState:UIControlStateNormal];
        [self.but7 setTitle:@"6" forState:UIControlStateNormal];
        [self.but8 setTitle:@"7" forState:UIControlStateNormal];
        [self.but9 setTitle:@"8" forState:UIControlStateNormal];
        [self.but10 setTitle:@"9" forState:UIControlStateNormal];
        [self.but11 setTitle:@"10" forState:UIControlStateNormal];
        [self.but12 setTitle:@"11" forState:UIControlStateNormal];
        [self.but13 setTitle:@"12" forState:UIControlStateNormal];
        [self.but14 setTitle:@"13" forState:UIControlStateNormal];
        [self.but15 setTitle:@"14" forState:UIControlStateNormal];
        [self.but16 setTitle:@"15" forState:UIControlStateNormal];
        [self.but17 setTitle:@"16" forState:UIControlStateNormal];
        [self.but18 setTitle:@"17" forState:UIControlStateNormal];
        [self.but19 setTitle:@"18" forState:UIControlStateNormal];
        [self.but20 setTitle:@"19" forState:UIControlStateNormal];
        [self.but21 setTitle:@"20" forState:UIControlStateNormal];
        [self.but22 setTitle:@"21" forState:UIControlStateNormal];
        [self.but23 setTitle:@"22" forState:UIControlStateNormal];
        [self.but24 setTitle:@"23" forState:UIControlStateNormal];
        [self.but25 setTitle:@"24" forState:UIControlStateNormal];
        [self.but26 setTitle:@"25" forState:UIControlStateNormal];
        [self.but27 setTitle:@"26" forState:UIControlStateNormal];
        [self.but28 setTitle:@"27" forState:UIControlStateNormal];
        [self.but29 setTitle:@"28" forState:UIControlStateNormal];
        [self.but30 setTitle:@"29" forState:UIControlStateNormal];
        [self.but31 setTitle:@"30" forState:UIControlStateNormal];
        [self.but32 setTitle:@"31" forState:UIControlStateNormal];
        [self.but33 setTitle:@"" forState:UIControlStateNormal];
        [self.but34 setTitle:@"" forState:UIControlStateNormal];
        [self.but35 setTitle:@"" forState:UIControlStateNormal];
         }
         else if (month==4 ||month== 6 || month== 9 || month==11){
             [self.but1 setTitle:@"" forState:UIControlStateNormal];
             [self.but2 setTitle:@"1" forState:UIControlStateNormal];
             [self.but3 setTitle:@"2" forState:UIControlStateNormal];
             [self.but4 setTitle:@"3" forState:UIControlStateNormal];
             [self.but5 setTitle:@"4" forState:UIControlStateNormal];
             [self.but6 setTitle:@"5" forState:UIControlStateNormal];
             [self.but7 setTitle:@"6" forState:UIControlStateNormal];
             [self.but8 setTitle:@"7" forState:UIControlStateNormal];
             [self.but9 setTitle:@"8" forState:UIControlStateNormal];
             [self.but10 setTitle:@"9" forState:UIControlStateNormal];
             [self.but11 setTitle:@"10" forState:UIControlStateNormal];
             [self.but12 setTitle:@"11" forState:UIControlStateNormal];
             [self.but13 setTitle:@"12" forState:UIControlStateNormal];
             [self.but14 setTitle:@"13" forState:UIControlStateNormal];
             [self.but15 setTitle:@"14" forState:UIControlStateNormal];
             [self.but16 setTitle:@"15" forState:UIControlStateNormal];
             [self.but17 setTitle:@"16" forState:UIControlStateNormal];
             [self.but18 setTitle:@"17" forState:UIControlStateNormal];
             [self.but19 setTitle:@"18" forState:UIControlStateNormal];
             [self.but20 setTitle:@"19" forState:UIControlStateNormal];
             [self.but21 setTitle:@"20" forState:UIControlStateNormal];
             [self.but22 setTitle:@"21" forState:UIControlStateNormal];
             [self.but23 setTitle:@"22" forState:UIControlStateNormal];
             [self.but24 setTitle:@"23" forState:UIControlStateNormal];
             [self.but25 setTitle:@"24" forState:UIControlStateNormal];
             [self.but26 setTitle:@"25" forState:UIControlStateNormal];
             [self.but27 setTitle:@"26" forState:UIControlStateNormal];
             [self.but28 setTitle:@"27" forState:UIControlStateNormal];
             [self.but29 setTitle:@"28" forState:UIControlStateNormal];
             [self.but30 setTitle:@"29" forState:UIControlStateNormal];
             [self.but31 setTitle:@"30" forState:UIControlStateNormal];
             [self.but32 setTitle:@"" forState:UIControlStateNormal];
             [self.but33 setTitle:@"" forState:UIControlStateNormal];
             [self.but34 setTitle:@"" forState:UIControlStateNormal];
             [self.but35 setTitle:@"" forState:UIControlStateNormal];
         }else if(month== 2){
             if(daysOfMonth.count==28){
                 [self.but1 setTitle:@"" forState:UIControlStateNormal];
                 [self.but2 setTitle:@"1" forState:UIControlStateNormal];
                 [self.but3 setTitle:@"2" forState:UIControlStateNormal];
                 [self.but4 setTitle:@"3" forState:UIControlStateNormal];
                 [self.but5 setTitle:@"4" forState:UIControlStateNormal];
                 [self.but6 setTitle:@"5" forState:UIControlStateNormal];
                 [self.but7 setTitle:@"6" forState:UIControlStateNormal];
                 [self.but8 setTitle:@"7" forState:UIControlStateNormal];
                 [self.but9 setTitle:@"8" forState:UIControlStateNormal];
                 [self.but10 setTitle:@"9" forState:UIControlStateNormal];
                 [self.but11 setTitle:@"10" forState:UIControlStateNormal];
                 [self.but12 setTitle:@"11" forState:UIControlStateNormal];
                 [self.but13 setTitle:@"12" forState:UIControlStateNormal];
                 [self.but14 setTitle:@"13" forState:UIControlStateNormal];
                 [self.but15 setTitle:@"14" forState:UIControlStateNormal];
                 [self.but16 setTitle:@"15" forState:UIControlStateNormal];
                 [self.but17 setTitle:@"16" forState:UIControlStateNormal];
                 [self.but18 setTitle:@"17" forState:UIControlStateNormal];
                 [self.but19 setTitle:@"18" forState:UIControlStateNormal];
                 [self.but20 setTitle:@"19" forState:UIControlStateNormal];
                 [self.but21 setTitle:@"20" forState:UIControlStateNormal];
                 [self.but22 setTitle:@"21" forState:UIControlStateNormal];
                 [self.but23 setTitle:@"22" forState:UIControlStateNormal];
                 [self.but24 setTitle:@"23" forState:UIControlStateNormal];
                 [self.but25 setTitle:@"24" forState:UIControlStateNormal];
                 [self.but26 setTitle:@"25" forState:UIControlStateNormal];
                 [self.but27 setTitle:@"26" forState:UIControlStateNormal];
                 [self.but28 setTitle:@"27" forState:UIControlStateNormal];
                 [self.but29 setTitle:@"28" forState:UIControlStateNormal];
                 [self.but30 setTitle:@"" forState:UIControlStateNormal];
                 [self.but31 setTitle:@"" forState:UIControlStateNormal];
                 [self.but32 setTitle:@"" forState:UIControlStateNormal];
                 [self.but33 setTitle:@"" forState:UIControlStateNormal];
                 [self.but34 setTitle:@"" forState:UIControlStateNormal];
                 [self.but35 setTitle:@"" forState:UIControlStateNormal];
             }else{
                 [self.but1 setTitle:@"" forState:UIControlStateNormal];
                 [self.but2 setTitle:@"1" forState:UIControlStateNormal];
                 [self.but3 setTitle:@"2" forState:UIControlStateNormal];
                 [self.but4 setTitle:@"3" forState:UIControlStateNormal];
                 [self.but5 setTitle:@"4" forState:UIControlStateNormal];
                 [self.but6 setTitle:@"5" forState:UIControlStateNormal];
                 [self.but7 setTitle:@"6" forState:UIControlStateNormal];
                 [self.but8 setTitle:@"7" forState:UIControlStateNormal];
                 [self.but9 setTitle:@"8" forState:UIControlStateNormal];
                 [self.but10 setTitle:@"9" forState:UIControlStateNormal];
                 [self.but11 setTitle:@"10" forState:UIControlStateNormal];
                 [self.but12 setTitle:@"11" forState:UIControlStateNormal];
                 [self.but13 setTitle:@"12" forState:UIControlStateNormal];
                 [self.but14 setTitle:@"13" forState:UIControlStateNormal];
                 [self.but15 setTitle:@"14" forState:UIControlStateNormal];
                 [self.but16 setTitle:@"15" forState:UIControlStateNormal];
                 [self.but17 setTitle:@"16" forState:UIControlStateNormal];
                 [self.but18 setTitle:@"17" forState:UIControlStateNormal];
                 [self.but19 setTitle:@"18" forState:UIControlStateNormal];
                 [self.but20 setTitle:@"19" forState:UIControlStateNormal];
                 [self.but21 setTitle:@"20" forState:UIControlStateNormal];
                 [self.but22 setTitle:@"21" forState:UIControlStateNormal];
                 [self.but23 setTitle:@"22" forState:UIControlStateNormal];
                 [self.but24 setTitle:@"23" forState:UIControlStateNormal];
                 [self.but25 setTitle:@"24" forState:UIControlStateNormal];
                 [self.but26 setTitle:@"25" forState:UIControlStateNormal];
                 [self.but27 setTitle:@"26" forState:UIControlStateNormal];
                 [self.but28 setTitle:@"27" forState:UIControlStateNormal];
                 [self.but29 setTitle:@"28" forState:UIControlStateNormal];
                 [self.but30 setTitle:@"29" forState:UIControlStateNormal];
                 [self.but31 setTitle:@"" forState:UIControlStateNormal];
                 [self.but32 setTitle:@"" forState:UIControlStateNormal];
                 [self.but33 setTitle:@"" forState:UIControlStateNormal];
                 [self.but34 setTitle:@"" forState:UIControlStateNormal];
                 [self.but35 setTitle:@"" forState:UIControlStateNormal];
             }
         }
    }else if ([day isEqualToString:@"tue"]){
         if(month==1 || month ==3 ||month==5 || month==7 || month==8 || month== 10|| month==12){
        [self.but1 setTitle:@"" forState:UIControlStateNormal];
        [self.but2 setTitle:@"" forState:UIControlStateNormal];
        [self.but3 setTitle:@"1" forState:UIControlStateNormal];
        [self.but4 setTitle:@"2" forState:UIControlStateNormal];
        [self.but5 setTitle:@"3" forState:UIControlStateNormal];
        [self.but6 setTitle:@"4" forState:UIControlStateNormal];
        [self.but7 setTitle:@"5" forState:UIControlStateNormal];
        [self.but8 setTitle:@"6" forState:UIControlStateNormal];
        [self.but9 setTitle:@"7" forState:UIControlStateNormal];
        [self.but10 setTitle:@"8" forState:UIControlStateNormal];
        [self.but11 setTitle:@"9" forState:UIControlStateNormal];
        [self.but12 setTitle:@"10" forState:UIControlStateNormal];
        [self.but13 setTitle:@"11" forState:UIControlStateNormal];
        [self.but14 setTitle:@"12" forState:UIControlStateNormal];
        [self.but15 setTitle:@"13" forState:UIControlStateNormal];
        [self.but16 setTitle:@"14" forState:UIControlStateNormal];
        [self.but17 setTitle:@"15" forState:UIControlStateNormal];
        [self.but18 setTitle:@"16" forState:UIControlStateNormal];
        [self.but19 setTitle:@"17" forState:UIControlStateNormal];
        [self.but20 setTitle:@"18" forState:UIControlStateNormal];
        [self.but21 setTitle:@"19" forState:UIControlStateNormal];
        [self.but22 setTitle:@"20" forState:UIControlStateNormal];
        [self.but23 setTitle:@"21" forState:UIControlStateNormal];
        [self.but24 setTitle:@"22" forState:UIControlStateNormal];
        [self.but25 setTitle:@"23" forState:UIControlStateNormal];
        [self.but26 setTitle:@"24" forState:UIControlStateNormal];
        [self.but27 setTitle:@"25" forState:UIControlStateNormal];
        [self.but28 setTitle:@"26" forState:UIControlStateNormal];
        [self.but29 setTitle:@"27" forState:UIControlStateNormal];
        [self.but30 setTitle:@"28" forState:UIControlStateNormal];
        [self.but31 setTitle:@"29" forState:UIControlStateNormal];
        [self.but32 setTitle:@"30" forState:UIControlStateNormal];
        [self.but33 setTitle:@"31" forState:UIControlStateNormal];
        [self.but34 setTitle:@"" forState:UIControlStateNormal];
        [self.but35 setTitle:@"" forState:UIControlStateNormal];
         }else if (month==4 ||month== 6 || month== 9 || month==11){
             [self.but1 setTitle:@"" forState:UIControlStateNormal];
             [self.but2 setTitle:@"" forState:UIControlStateNormal];
             [self.but3 setTitle:@"1" forState:UIControlStateNormal];
             [self.but4 setTitle:@"2" forState:UIControlStateNormal];
             [self.but5 setTitle:@"3" forState:UIControlStateNormal];
             [self.but6 setTitle:@"4" forState:UIControlStateNormal];
             [self.but7 setTitle:@"5" forState:UIControlStateNormal];
             [self.but8 setTitle:@"6" forState:UIControlStateNormal];
             [self.but9 setTitle:@"7" forState:UIControlStateNormal];
             [self.but10 setTitle:@"8" forState:UIControlStateNormal];
             [self.but11 setTitle:@"9" forState:UIControlStateNormal];
             [self.but12 setTitle:@"10" forState:UIControlStateNormal];
             [self.but13 setTitle:@"11" forState:UIControlStateNormal];
             [self.but14 setTitle:@"12" forState:UIControlStateNormal];
             [self.but15 setTitle:@"13" forState:UIControlStateNormal];
             [self.but16 setTitle:@"14" forState:UIControlStateNormal];
             [self.but17 setTitle:@"15" forState:UIControlStateNormal];
             [self.but18 setTitle:@"16" forState:UIControlStateNormal];
             [self.but19 setTitle:@"17" forState:UIControlStateNormal];
             [self.but20 setTitle:@"18" forState:UIControlStateNormal];
             [self.but21 setTitle:@"19" forState:UIControlStateNormal];
             [self.but22 setTitle:@"20" forState:UIControlStateNormal];
             [self.but23 setTitle:@"21" forState:UIControlStateNormal];
             [self.but24 setTitle:@"22" forState:UIControlStateNormal];
             [self.but25 setTitle:@"23" forState:UIControlStateNormal];
             [self.but26 setTitle:@"24" forState:UIControlStateNormal];
             [self.but27 setTitle:@"25" forState:UIControlStateNormal];
             [self.but28 setTitle:@"26" forState:UIControlStateNormal];
             [self.but29 setTitle:@"27" forState:UIControlStateNormal];
             [self.but30 setTitle:@"28" forState:UIControlStateNormal];
             [self.but31 setTitle:@"29" forState:UIControlStateNormal];
             [self.but32 setTitle:@"30" forState:UIControlStateNormal];
             [self.but33 setTitle:@"" forState:UIControlStateNormal];
             [self.but34 setTitle:@"" forState:UIControlStateNormal];
             [self.but35 setTitle:@"" forState:UIControlStateNormal];

         
         }else if(month== 2){
             if(daysOfMonth.count==28){
                 [self.but1 setTitle:@"" forState:UIControlStateNormal];
                 [self.but2 setTitle:@"" forState:UIControlStateNormal];
                 [self.but3 setTitle:@"1" forState:UIControlStateNormal];
                 [self.but4 setTitle:@"2" forState:UIControlStateNormal];
                 [self.but5 setTitle:@"3" forState:UIControlStateNormal];
                 [self.but6 setTitle:@"4" forState:UIControlStateNormal];
                 [self.but7 setTitle:@"5" forState:UIControlStateNormal];
                 [self.but8 setTitle:@"6" forState:UIControlStateNormal];
                 [self.but9 setTitle:@"7" forState:UIControlStateNormal];
                 [self.but10 setTitle:@"8" forState:UIControlStateNormal];
                 [self.but11 setTitle:@"9" forState:UIControlStateNormal];
                 [self.but12 setTitle:@"10" forState:UIControlStateNormal];
                 [self.but13 setTitle:@"11" forState:UIControlStateNormal];
                 [self.but14 setTitle:@"12" forState:UIControlStateNormal];
                 [self.but15 setTitle:@"13" forState:UIControlStateNormal];
                 [self.but16 setTitle:@"14" forState:UIControlStateNormal];
                 [self.but17 setTitle:@"15" forState:UIControlStateNormal];
                 [self.but18 setTitle:@"16" forState:UIControlStateNormal];
                 [self.but19 setTitle:@"17" forState:UIControlStateNormal];
                 [self.but20 setTitle:@"18" forState:UIControlStateNormal];
                 [self.but21 setTitle:@"19" forState:UIControlStateNormal];
                 [self.but22 setTitle:@"20" forState:UIControlStateNormal];
                 [self.but23 setTitle:@"21" forState:UIControlStateNormal];
                 [self.but24 setTitle:@"22" forState:UIControlStateNormal];
                 [self.but25 setTitle:@"23" forState:UIControlStateNormal];
                 [self.but26 setTitle:@"24" forState:UIControlStateNormal];
                 [self.but27 setTitle:@"25" forState:UIControlStateNormal];
                 [self.but28 setTitle:@"26" forState:UIControlStateNormal];
                 [self.but29 setTitle:@"27" forState:UIControlStateNormal];
                 [self.but30 setTitle:@"28" forState:UIControlStateNormal];
                 [self.but31 setTitle:@"" forState:UIControlStateNormal];
                 [self.but32 setTitle:@"" forState:UIControlStateNormal];
                 [self.but33 setTitle:@"" forState:UIControlStateNormal];
                 [self.but34 setTitle:@"" forState:UIControlStateNormal];
                 [self.but35 setTitle:@"" forState:UIControlStateNormal];
             }else{
                 [self.but1 setTitle:@"" forState:UIControlStateNormal];
                 [self.but2 setTitle:@"" forState:UIControlStateNormal];
                 [self.but3 setTitle:@"1" forState:UIControlStateNormal];
                 [self.but4 setTitle:@"2" forState:UIControlStateNormal];
                 [self.but5 setTitle:@"3" forState:UIControlStateNormal];
                 [self.but6 setTitle:@"4" forState:UIControlStateNormal];
                 [self.but7 setTitle:@"5" forState:UIControlStateNormal];
                 [self.but8 setTitle:@"6" forState:UIControlStateNormal];
                 [self.but9 setTitle:@"7" forState:UIControlStateNormal];
                 [self.but10 setTitle:@"8" forState:UIControlStateNormal];
                 [self.but11 setTitle:@"9" forState:UIControlStateNormal];
                 [self.but12 setTitle:@"10" forState:UIControlStateNormal];
                 [self.but13 setTitle:@"11" forState:UIControlStateNormal];
                 [self.but14 setTitle:@"12" forState:UIControlStateNormal];
                 [self.but15 setTitle:@"13" forState:UIControlStateNormal];
                 [self.but16 setTitle:@"14" forState:UIControlStateNormal];
                 [self.but17 setTitle:@"15" forState:UIControlStateNormal];
                 [self.but18 setTitle:@"16" forState:UIControlStateNormal];
                 [self.but19 setTitle:@"17" forState:UIControlStateNormal];
                 [self.but20 setTitle:@"18" forState:UIControlStateNormal];
                 [self.but21 setTitle:@"19" forState:UIControlStateNormal];
                 [self.but22 setTitle:@"20" forState:UIControlStateNormal];
                 [self.but23 setTitle:@"21" forState:UIControlStateNormal];
                 [self.but24 setTitle:@"22" forState:UIControlStateNormal];
                 [self.but25 setTitle:@"23" forState:UIControlStateNormal];
                 [self.but26 setTitle:@"24" forState:UIControlStateNormal];
                 [self.but27 setTitle:@"25" forState:UIControlStateNormal];
                 [self.but28 setTitle:@"26" forState:UIControlStateNormal];
                 [self.but29 setTitle:@"27" forState:UIControlStateNormal];
                 [self.but30 setTitle:@"28" forState:UIControlStateNormal];
                 [self.but31 setTitle:@"29" forState:UIControlStateNormal];
                 [self.but32 setTitle:@"" forState:UIControlStateNormal];
                 [self.but33 setTitle:@"" forState:UIControlStateNormal];
                 [self.but34 setTitle:@"" forState:UIControlStateNormal];
                 [self.but35 setTitle:@"" forState:UIControlStateNormal];
             }
         }
    }else if ([day isEqualToString:@"wed"]){
         if(month==1 || month ==3 ||month==5 || month==7 || month==8 || month== 10|| month==12){
        [self.but1 setTitle:@"" forState:UIControlStateNormal];
        [self.but2 setTitle:@"" forState:UIControlStateNormal];
        [self.but3 setTitle:@"" forState:UIControlStateNormal];
        [self.but4 setTitle:@"1" forState:UIControlStateNormal];
        [self.but5 setTitle:@"2" forState:UIControlStateNormal];
        [self.but6 setTitle:@"3" forState:UIControlStateNormal];
        [self.but7 setTitle:@"4" forState:UIControlStateNormal];
        [self.but8 setTitle:@"5" forState:UIControlStateNormal];
        [self.but9 setTitle:@"6" forState:UIControlStateNormal];
        [self.but10 setTitle:@"7" forState:UIControlStateNormal];
        [self.but11 setTitle:@"8" forState:UIControlStateNormal];
        [self.but12 setTitle:@"9" forState:UIControlStateNormal];
        [self.but13 setTitle:@"10" forState:UIControlStateNormal];
        [self.but14 setTitle:@"11" forState:UIControlStateNormal];
        [self.but15 setTitle:@"12" forState:UIControlStateNormal];
        [self.but16 setTitle:@"13" forState:UIControlStateNormal];
        [self.but17 setTitle:@"14" forState:UIControlStateNormal];
        [self.but18 setTitle:@"15" forState:UIControlStateNormal];
        [self.but19 setTitle:@"16" forState:UIControlStateNormal];
        [self.but20 setTitle:@"17" forState:UIControlStateNormal];
        [self.but21 setTitle:@"18" forState:UIControlStateNormal];
        [self.but22 setTitle:@"19" forState:UIControlStateNormal];
        [self.but23 setTitle:@"20" forState:UIControlStateNormal];
        [self.but24 setTitle:@"21" forState:UIControlStateNormal];
        [self.but25 setTitle:@"22" forState:UIControlStateNormal];
        [self.but26 setTitle:@"23" forState:UIControlStateNormal];
        [self.but27 setTitle:@"24" forState:UIControlStateNormal];
        [self.but28 setTitle:@"25" forState:UIControlStateNormal];
        [self.but29 setTitle:@"26" forState:UIControlStateNormal];
        [self.but30 setTitle:@"27" forState:UIControlStateNormal];
        [self.but31 setTitle:@"28" forState:UIControlStateNormal];
        [self.but32 setTitle:@"29" forState:UIControlStateNormal];
        [self.but33 setTitle:@"30" forState:UIControlStateNormal];
        [self.but34 setTitle:@"31" forState:UIControlStateNormal];
        [self.but35 setTitle:@"" forState:UIControlStateNormal];
         }else if (month==4 ||month== 6 || month== 9 || month==11){
             [self.but1 setTitle:@"" forState:UIControlStateNormal];
             [self.but2 setTitle:@"" forState:UIControlStateNormal];
             [self.but3 setTitle:@"" forState:UIControlStateNormal];
             [self.but4 setTitle:@"1" forState:UIControlStateNormal];
             [self.but5 setTitle:@"2" forState:UIControlStateNormal];
             [self.but6 setTitle:@"3" forState:UIControlStateNormal];
             [self.but7 setTitle:@"4" forState:UIControlStateNormal];
             [self.but8 setTitle:@"5" forState:UIControlStateNormal];
             [self.but9 setTitle:@"6" forState:UIControlStateNormal];
             [self.but10 setTitle:@"7" forState:UIControlStateNormal];
             [self.but11 setTitle:@"8" forState:UIControlStateNormal];
             [self.but12 setTitle:@"9" forState:UIControlStateNormal];
             [self.but13 setTitle:@"10" forState:UIControlStateNormal];
             [self.but14 setTitle:@"11" forState:UIControlStateNormal];
             [self.but15 setTitle:@"12" forState:UIControlStateNormal];
             [self.but16 setTitle:@"13" forState:UIControlStateNormal];
             [self.but17 setTitle:@"14" forState:UIControlStateNormal];
             [self.but18 setTitle:@"15" forState:UIControlStateNormal];
             [self.but19 setTitle:@"16" forState:UIControlStateNormal];
             [self.but20 setTitle:@"17" forState:UIControlStateNormal];
             [self.but21 setTitle:@"18" forState:UIControlStateNormal];
             [self.but22 setTitle:@"19" forState:UIControlStateNormal];
             [self.but23 setTitle:@"20" forState:UIControlStateNormal];
             [self.but24 setTitle:@"21" forState:UIControlStateNormal];
             [self.but25 setTitle:@"22" forState:UIControlStateNormal];
             [self.but26 setTitle:@"23" forState:UIControlStateNormal];
             [self.but27 setTitle:@"24" forState:UIControlStateNormal];
             [self.but28 setTitle:@"25" forState:UIControlStateNormal];
             [self.but29 setTitle:@"26" forState:UIControlStateNormal];
             [self.but30 setTitle:@"27" forState:UIControlStateNormal];
             [self.but31 setTitle:@"28" forState:UIControlStateNormal];
             [self.but32 setTitle:@"29" forState:UIControlStateNormal];
             [self.but33 setTitle:@"30" forState:UIControlStateNormal];
             [self.but34 setTitle:@"" forState:UIControlStateNormal];
             [self.but35 setTitle:@"" forState:UIControlStateNormal];

         }else if(month== 2){
             if(daysOfMonth.count==28){
                 [self.but1 setTitle:@"" forState:UIControlStateNormal];
                 [self.but2 setTitle:@"" forState:UIControlStateNormal];
                 [self.but3 setTitle:@"" forState:UIControlStateNormal];
                 [self.but4 setTitle:@"1" forState:UIControlStateNormal];
                 [self.but5 setTitle:@"2" forState:UIControlStateNormal];
                 [self.but6 setTitle:@"3" forState:UIControlStateNormal];
                 [self.but7 setTitle:@"4" forState:UIControlStateNormal];
                 [self.but8 setTitle:@"5" forState:UIControlStateNormal];
                 [self.but9 setTitle:@"6" forState:UIControlStateNormal];
                 [self.but10 setTitle:@"7" forState:UIControlStateNormal];
                 [self.but11 setTitle:@"8" forState:UIControlStateNormal];
                 [self.but12 setTitle:@"9" forState:UIControlStateNormal];
                 [self.but13 setTitle:@"10" forState:UIControlStateNormal];
                 [self.but14 setTitle:@"11" forState:UIControlStateNormal];
                 [self.but15 setTitle:@"12" forState:UIControlStateNormal];
                 [self.but16 setTitle:@"13" forState:UIControlStateNormal];
                 [self.but17 setTitle:@"14" forState:UIControlStateNormal];
                 [self.but18 setTitle:@"15" forState:UIControlStateNormal];
                 [self.but19 setTitle:@"16" forState:UIControlStateNormal];
                 [self.but20 setTitle:@"17" forState:UIControlStateNormal];
                 [self.but21 setTitle:@"18" forState:UIControlStateNormal];
                 [self.but22 setTitle:@"19" forState:UIControlStateNormal];
                 [self.but23 setTitle:@"20" forState:UIControlStateNormal];
                 [self.but24 setTitle:@"21" forState:UIControlStateNormal];
                 [self.but25 setTitle:@"22" forState:UIControlStateNormal];
                 [self.but26 setTitle:@"23" forState:UIControlStateNormal];
                 [self.but27 setTitle:@"24" forState:UIControlStateNormal];
                 [self.but28 setTitle:@"25" forState:UIControlStateNormal];
                 [self.but29 setTitle:@"26" forState:UIControlStateNormal];
                 [self.but30 setTitle:@"27" forState:UIControlStateNormal];
                 [self.but31 setTitle:@"28" forState:UIControlStateNormal];
                 [self.but32 setTitle:@"" forState:UIControlStateNormal];
                 [self.but33 setTitle:@"" forState:UIControlStateNormal];
                 [self.but34 setTitle:@"" forState:UIControlStateNormal];
                 [self.but35 setTitle:@"" forState:UIControlStateNormal];
             }else{
                 [self.but1 setTitle:@"" forState:UIControlStateNormal];
                 [self.but2 setTitle:@"" forState:UIControlStateNormal];
                 [self.but3 setTitle:@"" forState:UIControlStateNormal];
                 [self.but4 setTitle:@"1" forState:UIControlStateNormal];
                 [self.but5 setTitle:@"2" forState:UIControlStateNormal];
                 [self.but6 setTitle:@"3" forState:UIControlStateNormal];
                 [self.but7 setTitle:@"4" forState:UIControlStateNormal];
                 [self.but8 setTitle:@"5" forState:UIControlStateNormal];
                 [self.but9 setTitle:@"6" forState:UIControlStateNormal];
                 [self.but10 setTitle:@"7" forState:UIControlStateNormal];
                 [self.but11 setTitle:@"8" forState:UIControlStateNormal];
                 [self.but12 setTitle:@"9" forState:UIControlStateNormal];
                 [self.but13 setTitle:@"10" forState:UIControlStateNormal];
                 [self.but14 setTitle:@"11" forState:UIControlStateNormal];
                 [self.but15 setTitle:@"12" forState:UIControlStateNormal];
                 [self.but16 setTitle:@"13" forState:UIControlStateNormal];
                 [self.but17 setTitle:@"14" forState:UIControlStateNormal];
                 [self.but18 setTitle:@"15" forState:UIControlStateNormal];
                 [self.but19 setTitle:@"16" forState:UIControlStateNormal];
                 [self.but20 setTitle:@"17" forState:UIControlStateNormal];
                 [self.but21 setTitle:@"18" forState:UIControlStateNormal];
                 [self.but22 setTitle:@"19" forState:UIControlStateNormal];
                 [self.but23 setTitle:@"20" forState:UIControlStateNormal];
                 [self.but24 setTitle:@"21" forState:UIControlStateNormal];
                 [self.but25 setTitle:@"22" forState:UIControlStateNormal];
                 [self.but26 setTitle:@"23" forState:UIControlStateNormal];
                 [self.but27 setTitle:@"24" forState:UIControlStateNormal];
                 [self.but28 setTitle:@"25" forState:UIControlStateNormal];
                 [self.but29 setTitle:@"26" forState:UIControlStateNormal];
                 [self.but30 setTitle:@"27" forState:UIControlStateNormal];
                 [self.but31 setTitle:@"28" forState:UIControlStateNormal];
                 [self.but32 setTitle:@"29" forState:UIControlStateNormal];
                 [self.but33 setTitle:@"" forState:UIControlStateNormal];
                 [self.but34 setTitle:@"" forState:UIControlStateNormal];
                 [self.but35 setTitle:@"" forState:UIControlStateNormal];
             }
         }
    }else if ([day isEqualToString:@"thu"]){
         if(month==1 || month ==3 ||month==5 || month==7 || month==8 || month== 10|| month==12){
        [self.but1 setTitle:@"" forState:UIControlStateNormal];
        [self.but2 setTitle:@"" forState:UIControlStateNormal];
        [self.but3 setTitle:@"" forState:UIControlStateNormal];
        [self.but4 setTitle:@"" forState:UIControlStateNormal];
        [self.but5 setTitle:@"1" forState:UIControlStateNormal];
        [self.but6 setTitle:@"2" forState:UIControlStateNormal];
        [self.but7 setTitle:@"3" forState:UIControlStateNormal];
        [self.but8 setTitle:@"4" forState:UIControlStateNormal];
        [self.but9 setTitle:@"5" forState:UIControlStateNormal];
        [self.but10 setTitle:@"6" forState:UIControlStateNormal];
        [self.but11 setTitle:@"7" forState:UIControlStateNormal];
        [self.but12 setTitle:@"8" forState:UIControlStateNormal];
        [self.but13 setTitle:@"9" forState:UIControlStateNormal];
        [self.but14 setTitle:@"10" forState:UIControlStateNormal];
        [self.but15 setTitle:@"11" forState:UIControlStateNormal];
        [self.but16 setTitle:@"12" forState:UIControlStateNormal];
        [self.but17 setTitle:@"13" forState:UIControlStateNormal];
        [self.but18 setTitle:@"14" forState:UIControlStateNormal];
        [self.but19 setTitle:@"15" forState:UIControlStateNormal];
        [self.but20 setTitle:@"16" forState:UIControlStateNormal];
        [self.but21 setTitle:@"17" forState:UIControlStateNormal];
        [self.but22 setTitle:@"18" forState:UIControlStateNormal];
        [self.but23 setTitle:@"19" forState:UIControlStateNormal];
        [self.but24 setTitle:@"20" forState:UIControlStateNormal];
        [self.but25 setTitle:@"21" forState:UIControlStateNormal];
        [self.but26 setTitle:@"22" forState:UIControlStateNormal];
        [self.but27 setTitle:@"23" forState:UIControlStateNormal];
        [self.but28 setTitle:@"24" forState:UIControlStateNormal];
        [self.but29 setTitle:@"25" forState:UIControlStateNormal];
        [self.but30 setTitle:@"26" forState:UIControlStateNormal];
        [self.but31 setTitle:@"27" forState:UIControlStateNormal];
        [self.but32 setTitle:@"28" forState:UIControlStateNormal];
        [self.but33 setTitle:@"29" forState:UIControlStateNormal];
        [self.but34 setTitle:@"30" forState:UIControlStateNormal];
        [self.but35 setTitle:@"31" forState:UIControlStateNormal];
         }else if (month==4 ||month== 6 || month== 9 || month==11){
             [self.but1 setTitle:@"" forState:UIControlStateNormal];
             [self.but2 setTitle:@"" forState:UIControlStateNormal];
             [self.but3 setTitle:@"" forState:UIControlStateNormal];
             [self.but4 setTitle:@"" forState:UIControlStateNormal];
             [self.but5 setTitle:@"1" forState:UIControlStateNormal];
             [self.but6 setTitle:@"2" forState:UIControlStateNormal];
             [self.but7 setTitle:@"3" forState:UIControlStateNormal];
             [self.but8 setTitle:@"4" forState:UIControlStateNormal];
             [self.but9 setTitle:@"5" forState:UIControlStateNormal];
             [self.but10 setTitle:@"6" forState:UIControlStateNormal];
             [self.but11 setTitle:@"7" forState:UIControlStateNormal];
             [self.but12 setTitle:@"8" forState:UIControlStateNormal];
             [self.but13 setTitle:@"9" forState:UIControlStateNormal];
             [self.but14 setTitle:@"10" forState:UIControlStateNormal];
             [self.but15 setTitle:@"11" forState:UIControlStateNormal];
             [self.but16 setTitle:@"12" forState:UIControlStateNormal];
             [self.but17 setTitle:@"13" forState:UIControlStateNormal];
             [self.but18 setTitle:@"14" forState:UIControlStateNormal];
             [self.but19 setTitle:@"15" forState:UIControlStateNormal];
             [self.but20 setTitle:@"16" forState:UIControlStateNormal];
             [self.but21 setTitle:@"17" forState:UIControlStateNormal];
             [self.but22 setTitle:@"18" forState:UIControlStateNormal];
             [self.but23 setTitle:@"19" forState:UIControlStateNormal];
             [self.but24 setTitle:@"20" forState:UIControlStateNormal];
             [self.but25 setTitle:@"21" forState:UIControlStateNormal];
             [self.but26 setTitle:@"22" forState:UIControlStateNormal];
             [self.but27 setTitle:@"23" forState:UIControlStateNormal];
             [self.but28 setTitle:@"24" forState:UIControlStateNormal];
             [self.but29 setTitle:@"25" forState:UIControlStateNormal];
             [self.but30 setTitle:@"26" forState:UIControlStateNormal];
             [self.but31 setTitle:@"27" forState:UIControlStateNormal];
             [self.but32 setTitle:@"28" forState:UIControlStateNormal];
             [self.but33 setTitle:@"29" forState:UIControlStateNormal];
             [self.but34 setTitle:@"30" forState:UIControlStateNormal];
             [self.but35 setTitle:@"" forState:UIControlStateNormal];

         }else if(month== 2){
             if(daysOfMonth.count==28){
                 [self.but1 setTitle:@"" forState:UIControlStateNormal];
                 [self.but2 setTitle:@"" forState:UIControlStateNormal];
                 [self.but3 setTitle:@"" forState:UIControlStateNormal];
                 [self.but4 setTitle:@"" forState:UIControlStateNormal];
                 [self.but5 setTitle:@"1" forState:UIControlStateNormal];
                 [self.but6 setTitle:@"2" forState:UIControlStateNormal];
                 [self.but7 setTitle:@"3" forState:UIControlStateNormal];
                 [self.but8 setTitle:@"4" forState:UIControlStateNormal];
                 [self.but9 setTitle:@"5" forState:UIControlStateNormal];
                 [self.but10 setTitle:@"6" forState:UIControlStateNormal];
                 [self.but11 setTitle:@"7" forState:UIControlStateNormal];
                 [self.but12 setTitle:@"8" forState:UIControlStateNormal];
                 [self.but13 setTitle:@"9" forState:UIControlStateNormal];
                 [self.but14 setTitle:@"10" forState:UIControlStateNormal];
                 [self.but15 setTitle:@"11" forState:UIControlStateNormal];
                 [self.but16 setTitle:@"12" forState:UIControlStateNormal];
                 [self.but17 setTitle:@"13" forState:UIControlStateNormal];
                 [self.but18 setTitle:@"14" forState:UIControlStateNormal];
                 [self.but19 setTitle:@"15" forState:UIControlStateNormal];
                 [self.but20 setTitle:@"16" forState:UIControlStateNormal];
                 [self.but21 setTitle:@"17" forState:UIControlStateNormal];
                 [self.but22 setTitle:@"18" forState:UIControlStateNormal];
                 [self.but23 setTitle:@"19" forState:UIControlStateNormal];
                 [self.but24 setTitle:@"20" forState:UIControlStateNormal];
                 [self.but25 setTitle:@"21" forState:UIControlStateNormal];
                 [self.but26 setTitle:@"22" forState:UIControlStateNormal];
                 [self.but27 setTitle:@"23" forState:UIControlStateNormal];
                 [self.but28 setTitle:@"24" forState:UIControlStateNormal];
                 [self.but29 setTitle:@"25" forState:UIControlStateNormal];
                 [self.but30 setTitle:@"26" forState:UIControlStateNormal];
                 [self.but31 setTitle:@"27" forState:UIControlStateNormal];
                 [self.but32 setTitle:@"28" forState:UIControlStateNormal];
                 [self.but33 setTitle:@"" forState:UIControlStateNormal];
                 [self.but34 setTitle:@"" forState:UIControlStateNormal];
                 [self.but35 setTitle:@"" forState:UIControlStateNormal];

             }else{
                 [self.but1 setTitle:@"" forState:UIControlStateNormal];
                 [self.but2 setTitle:@"" forState:UIControlStateNormal];
                 [self.but3 setTitle:@"" forState:UIControlStateNormal];
                 [self.but4 setTitle:@"" forState:UIControlStateNormal];
                 [self.but5 setTitle:@"1" forState:UIControlStateNormal];
                 [self.but6 setTitle:@"2" forState:UIControlStateNormal];
                 [self.but7 setTitle:@"3" forState:UIControlStateNormal];
                 [self.but8 setTitle:@"4" forState:UIControlStateNormal];
                 [self.but9 setTitle:@"5" forState:UIControlStateNormal];
                 [self.but10 setTitle:@"6" forState:UIControlStateNormal];
                 [self.but11 setTitle:@"7" forState:UIControlStateNormal];
                 [self.but12 setTitle:@"8" forState:UIControlStateNormal];
                 [self.but13 setTitle:@"9" forState:UIControlStateNormal];
                 [self.but14 setTitle:@"10" forState:UIControlStateNormal];
                 [self.but15 setTitle:@"11" forState:UIControlStateNormal];
                 [self.but16 setTitle:@"12" forState:UIControlStateNormal];
                 [self.but17 setTitle:@"13" forState:UIControlStateNormal];
                 [self.but18 setTitle:@"14" forState:UIControlStateNormal];
                 [self.but19 setTitle:@"15" forState:UIControlStateNormal];
                 [self.but20 setTitle:@"16" forState:UIControlStateNormal];
                 [self.but21 setTitle:@"17" forState:UIControlStateNormal];
                 [self.but22 setTitle:@"18" forState:UIControlStateNormal];
                 [self.but23 setTitle:@"19" forState:UIControlStateNormal];
                 [self.but24 setTitle:@"20" forState:UIControlStateNormal];
                 [self.but25 setTitle:@"21" forState:UIControlStateNormal];
                 [self.but26 setTitle:@"22" forState:UIControlStateNormal];
                 [self.but27 setTitle:@"23" forState:UIControlStateNormal];
                 [self.but28 setTitle:@"24" forState:UIControlStateNormal];
                 [self.but29 setTitle:@"25" forState:UIControlStateNormal];
                 [self.but30 setTitle:@"26" forState:UIControlStateNormal];
                 [self.but31 setTitle:@"27" forState:UIControlStateNormal];
                 [self.but32 setTitle:@"28" forState:UIControlStateNormal];
                 [self.but33 setTitle:@"29" forState:UIControlStateNormal];
                 [self.but34 setTitle:@"" forState:UIControlStateNormal];
                 [self.but35 setTitle:@"" forState:UIControlStateNormal];

             }
         }
    }else if ([day isEqualToString:@"fri"]){
         if(month==1 || month ==3 ||month==5 || month==7 || month==8 || month== 10|| month==12){
        [self.but1 setTitle:@"31" forState:UIControlStateNormal];
        [self.but2 setTitle:@"" forState:UIControlStateNormal];
        [self.but3 setTitle:@"" forState:UIControlStateNormal];
        [self.but4 setTitle:@"" forState:UIControlStateNormal];
        [self.but5 setTitle:@"" forState:UIControlStateNormal];
        [self.but6 setTitle:@"1" forState:UIControlStateNormal];
        [self.but7 setTitle:@"2" forState:UIControlStateNormal];
        [self.but8 setTitle:@"3" forState:UIControlStateNormal];
        [self.but9 setTitle:@"4" forState:UIControlStateNormal];
        [self.but10 setTitle:@"5" forState:UIControlStateNormal];
        [self.but11 setTitle:@"6" forState:UIControlStateNormal];
        [self.but12 setTitle:@"7" forState:UIControlStateNormal];
        [self.but13 setTitle:@"8" forState:UIControlStateNormal];
        [self.but14 setTitle:@"9" forState:UIControlStateNormal];
        [self.but15 setTitle:@"10" forState:UIControlStateNormal];
        [self.but16 setTitle:@"11" forState:UIControlStateNormal];
        [self.but17 setTitle:@"12" forState:UIControlStateNormal];
        [self.but18 setTitle:@"13" forState:UIControlStateNormal];
        [self.but19 setTitle:@"14" forState:UIControlStateNormal];
        [self.but20 setTitle:@"15" forState:UIControlStateNormal];
        [self.but21 setTitle:@"16" forState:UIControlStateNormal];
        [self.but22 setTitle:@"17" forState:UIControlStateNormal];
        [self.but23 setTitle:@"18" forState:UIControlStateNormal];
        [self.but24 setTitle:@"19" forState:UIControlStateNormal];
        [self.but25 setTitle:@"20" forState:UIControlStateNormal];
        [self.but26 setTitle:@"21" forState:UIControlStateNormal];
        [self.but27 setTitle:@"22" forState:UIControlStateNormal];
        [self.but28 setTitle:@"23" forState:UIControlStateNormal];
        [self.but29 setTitle:@"24" forState:UIControlStateNormal];
        [self.but30 setTitle:@"25" forState:UIControlStateNormal];
        [self.but31 setTitle:@"26" forState:UIControlStateNormal];
        [self.but32 setTitle:@"27" forState:UIControlStateNormal];
        [self.but33 setTitle:@"28" forState:UIControlStateNormal];
        [self.but34 setTitle:@"29" forState:UIControlStateNormal];
        [self.but35 setTitle:@"30" forState:UIControlStateNormal];
         }else if (month==4 ||month== 6 || month== 9 || month==11){
             [self.but1 setTitle:@"" forState:UIControlStateNormal];
             [self.but2 setTitle:@"" forState:UIControlStateNormal];
             [self.but3 setTitle:@"" forState:UIControlStateNormal];
             [self.but4 setTitle:@"" forState:UIControlStateNormal];
             [self.but5 setTitle:@"" forState:UIControlStateNormal];
             [self.but6 setTitle:@"1" forState:UIControlStateNormal];
             [self.but7 setTitle:@"2" forState:UIControlStateNormal];
             [self.but8 setTitle:@"3" forState:UIControlStateNormal];
             [self.but9 setTitle:@"4" forState:UIControlStateNormal];
             [self.but10 setTitle:@"5" forState:UIControlStateNormal];
             [self.but11 setTitle:@"6" forState:UIControlStateNormal];
             [self.but12 setTitle:@"7" forState:UIControlStateNormal];
             [self.but13 setTitle:@"8" forState:UIControlStateNormal];
             [self.but14 setTitle:@"9" forState:UIControlStateNormal];
             [self.but15 setTitle:@"10" forState:UIControlStateNormal];
             [self.but16 setTitle:@"11" forState:UIControlStateNormal];
             [self.but17 setTitle:@"12" forState:UIControlStateNormal];
             [self.but18 setTitle:@"13" forState:UIControlStateNormal];
             [self.but19 setTitle:@"14" forState:UIControlStateNormal];
             [self.but20 setTitle:@"15" forState:UIControlStateNormal];
             [self.but21 setTitle:@"16" forState:UIControlStateNormal];
             [self.but22 setTitle:@"17" forState:UIControlStateNormal];
             [self.but23 setTitle:@"18" forState:UIControlStateNormal];
             [self.but24 setTitle:@"19" forState:UIControlStateNormal];
             [self.but25 setTitle:@"20" forState:UIControlStateNormal];
             [self.but26 setTitle:@"21" forState:UIControlStateNormal];
             [self.but27 setTitle:@"22" forState:UIControlStateNormal];
             [self.but28 setTitle:@"23" forState:UIControlStateNormal];
             [self.but29 setTitle:@"24" forState:UIControlStateNormal];
             [self.but30 setTitle:@"25" forState:UIControlStateNormal];
             [self.but31 setTitle:@"26" forState:UIControlStateNormal];
             [self.but32 setTitle:@"27" forState:UIControlStateNormal];
             [self.but33 setTitle:@"28" forState:UIControlStateNormal];
             [self.but34 setTitle:@"29" forState:UIControlStateNormal];
             [self.but35 setTitle:@"30" forState:UIControlStateNormal];
         }else if(month== 2){
             if(daysOfMonth.count==28){
                 [self.but1 setTitle:@"" forState:UIControlStateNormal];
                 [self.but2 setTitle:@"" forState:UIControlStateNormal];
                 [self.but3 setTitle:@"" forState:UIControlStateNormal];
                 [self.but4 setTitle:@"" forState:UIControlStateNormal];
                 [self.but5 setTitle:@"" forState:UIControlStateNormal];
                 [self.but6 setTitle:@"1" forState:UIControlStateNormal];
                 [self.but7 setTitle:@"2" forState:UIControlStateNormal];
                 [self.but8 setTitle:@"3" forState:UIControlStateNormal];
                 [self.but9 setTitle:@"4" forState:UIControlStateNormal];
                 [self.but10 setTitle:@"5" forState:UIControlStateNormal];
                 [self.but11 setTitle:@"6" forState:UIControlStateNormal];
                 [self.but12 setTitle:@"7" forState:UIControlStateNormal];
                 [self.but13 setTitle:@"8" forState:UIControlStateNormal];
                 [self.but14 setTitle:@"9" forState:UIControlStateNormal];
                 [self.but15 setTitle:@"10" forState:UIControlStateNormal];
                 [self.but16 setTitle:@"11" forState:UIControlStateNormal];
                 [self.but17 setTitle:@"12" forState:UIControlStateNormal];
                 [self.but18 setTitle:@"13" forState:UIControlStateNormal];
                 [self.but19 setTitle:@"14" forState:UIControlStateNormal];
                 [self.but20 setTitle:@"15" forState:UIControlStateNormal];
                 [self.but21 setTitle:@"16" forState:UIControlStateNormal];
                 [self.but22 setTitle:@"17" forState:UIControlStateNormal];
                 [self.but23 setTitle:@"18" forState:UIControlStateNormal];
                 [self.but24 setTitle:@"19" forState:UIControlStateNormal];
                 [self.but25 setTitle:@"20" forState:UIControlStateNormal];
                 [self.but26 setTitle:@"21" forState:UIControlStateNormal];
                 [self.but27 setTitle:@"22" forState:UIControlStateNormal];
                 [self.but28 setTitle:@"23" forState:UIControlStateNormal];
                 [self.but29 setTitle:@"24" forState:UIControlStateNormal];
                 [self.but30 setTitle:@"25" forState:UIControlStateNormal];
                 [self.but31 setTitle:@"26" forState:UIControlStateNormal];
                 [self.but32 setTitle:@"27" forState:UIControlStateNormal];
                 [self.but33 setTitle:@"28" forState:UIControlStateNormal];
                 [self.but34 setTitle:@"" forState:UIControlStateNormal];
                 [self.but35 setTitle:@"" forState:UIControlStateNormal];

             }else{
                 [self.but1 setTitle:@"" forState:UIControlStateNormal];
                 [self.but2 setTitle:@"" forState:UIControlStateNormal];
                 [self.but3 setTitle:@"" forState:UIControlStateNormal];
                 [self.but4 setTitle:@"" forState:UIControlStateNormal];
                 [self.but5 setTitle:@"" forState:UIControlStateNormal];
                 [self.but6 setTitle:@"1" forState:UIControlStateNormal];
                 [self.but7 setTitle:@"2" forState:UIControlStateNormal];
                 [self.but8 setTitle:@"3" forState:UIControlStateNormal];
                 [self.but9 setTitle:@"4" forState:UIControlStateNormal];
                 [self.but10 setTitle:@"5" forState:UIControlStateNormal];
                 [self.but11 setTitle:@"6" forState:UIControlStateNormal];
                 [self.but12 setTitle:@"7" forState:UIControlStateNormal];
                 [self.but13 setTitle:@"8" forState:UIControlStateNormal];
                 [self.but14 setTitle:@"9" forState:UIControlStateNormal];
                 [self.but15 setTitle:@"10" forState:UIControlStateNormal];
                 [self.but16 setTitle:@"11" forState:UIControlStateNormal];
                 [self.but17 setTitle:@"12" forState:UIControlStateNormal];
                 [self.but18 setTitle:@"13" forState:UIControlStateNormal];
                 [self.but19 setTitle:@"14" forState:UIControlStateNormal];
                 [self.but20 setTitle:@"15" forState:UIControlStateNormal];
                 [self.but21 setTitle:@"16" forState:UIControlStateNormal];
                 [self.but22 setTitle:@"17" forState:UIControlStateNormal];
                 [self.but23 setTitle:@"18" forState:UIControlStateNormal];
                 [self.but24 setTitle:@"19" forState:UIControlStateNormal];
                 [self.but25 setTitle:@"20" forState:UIControlStateNormal];
                 [self.but26 setTitle:@"21" forState:UIControlStateNormal];
                 [self.but27 setTitle:@"22" forState:UIControlStateNormal];
                 [self.but28 setTitle:@"23" forState:UIControlStateNormal];
                 [self.but29 setTitle:@"24" forState:UIControlStateNormal];
                 [self.but30 setTitle:@"25" forState:UIControlStateNormal];
                 [self.but31 setTitle:@"26" forState:UIControlStateNormal];
                 [self.but32 setTitle:@"27" forState:UIControlStateNormal];
                 [self.but33 setTitle:@"28" forState:UIControlStateNormal];
                 [self.but34 setTitle:@"29" forState:UIControlStateNormal];
                 [self.but35 setTitle:@"" forState:UIControlStateNormal];

             }
         }
    }else if ([day isEqualToString:@"sat"]){
         if(month==1 || month ==3 ||month==5 || month==7 || month==8 || month== 10|| month==12){
        [self.but1 setTitle:@"30" forState:UIControlStateNormal];
        [self.but2 setTitle:@"31" forState:UIControlStateNormal];
        [self.but3 setTitle:@"" forState:UIControlStateNormal];
        [self.but4 setTitle:@"" forState:UIControlStateNormal];
        [self.but5 setTitle:@"" forState:UIControlStateNormal];
        [self.but6 setTitle:@"" forState:UIControlStateNormal];
        [self.but7 setTitle:@"1" forState:UIControlStateNormal];
        [self.but8 setTitle:@"2" forState:UIControlStateNormal];
        [self.but9 setTitle:@"3" forState:UIControlStateNormal];
        [self.but10 setTitle:@"4" forState:UIControlStateNormal];
        [self.but11 setTitle:@"5" forState:UIControlStateNormal];
        [self.but12 setTitle:@"6" forState:UIControlStateNormal];
        [self.but13 setTitle:@"7" forState:UIControlStateNormal];
        [self.but14 setTitle:@"8" forState:UIControlStateNormal];
        [self.but15 setTitle:@"9" forState:UIControlStateNormal];
        [self.but16 setTitle:@"10" forState:UIControlStateNormal];
        [self.but17 setTitle:@"11" forState:UIControlStateNormal];
        [self.but18 setTitle:@"12" forState:UIControlStateNormal];
        [self.but19 setTitle:@"13" forState:UIControlStateNormal];
        [self.but20 setTitle:@"14" forState:UIControlStateNormal];
        [self.but21 setTitle:@"15" forState:UIControlStateNormal];
        [self.but22 setTitle:@"16" forState:UIControlStateNormal];
        [self.but23 setTitle:@"17" forState:UIControlStateNormal];
        [self.but24 setTitle:@"18" forState:UIControlStateNormal];
        [self.but25 setTitle:@"19" forState:UIControlStateNormal];
        [self.but26 setTitle:@"20" forState:UIControlStateNormal];
        [self.but27 setTitle:@"21" forState:UIControlStateNormal];
        [self.but28 setTitle:@"22" forState:UIControlStateNormal];
        [self.but29 setTitle:@"23" forState:UIControlStateNormal];
        [self.but30 setTitle:@"24" forState:UIControlStateNormal];
        [self.but31 setTitle:@"25" forState:UIControlStateNormal];
        [self.but32 setTitle:@"26" forState:UIControlStateNormal];
        [self.but33 setTitle:@"27" forState:UIControlStateNormal];
        [self.but34 setTitle:@"28" forState:UIControlStateNormal];
        [self.but35 setTitle:@"29" forState:UIControlStateNormal];
         }
        else if (month==4 ||month== 6 || month== 9 || month==11){
            [self.but1 setTitle:@"30" forState:UIControlStateNormal];
            [self.but2 setTitle:@"" forState:UIControlStateNormal];
            [self.but3 setTitle:@"" forState:UIControlStateNormal];
            [self.but4 setTitle:@"" forState:UIControlStateNormal];
            [self.but5 setTitle:@"" forState:UIControlStateNormal];
            [self.but6 setTitle:@"" forState:UIControlStateNormal];
            [self.but7 setTitle:@"1" forState:UIControlStateNormal];
            [self.but8 setTitle:@"2" forState:UIControlStateNormal];
            [self.but9 setTitle:@"3" forState:UIControlStateNormal];
            [self.but10 setTitle:@"4" forState:UIControlStateNormal];
            [self.but11 setTitle:@"5" forState:UIControlStateNormal];
            [self.but12 setTitle:@"6" forState:UIControlStateNormal];
            [self.but13 setTitle:@"7" forState:UIControlStateNormal];
            [self.but14 setTitle:@"8" forState:UIControlStateNormal];
            [self.but15 setTitle:@"9" forState:UIControlStateNormal];
            [self.but16 setTitle:@"10" forState:UIControlStateNormal];
            [self.but17 setTitle:@"11" forState:UIControlStateNormal];
            [self.but18 setTitle:@"12" forState:UIControlStateNormal];
            [self.but19 setTitle:@"13" forState:UIControlStateNormal];
            [self.but20 setTitle:@"14" forState:UIControlStateNormal];
            [self.but21 setTitle:@"15" forState:UIControlStateNormal];
            [self.but22 setTitle:@"16" forState:UIControlStateNormal];
            [self.but23 setTitle:@"17" forState:UIControlStateNormal];
            [self.but24 setTitle:@"18" forState:UIControlStateNormal];
            [self.but25 setTitle:@"19" forState:UIControlStateNormal];
            [self.but26 setTitle:@"20" forState:UIControlStateNormal];
            [self.but27 setTitle:@"21" forState:UIControlStateNormal];
            [self.but28 setTitle:@"22" forState:UIControlStateNormal];
            [self.but29 setTitle:@"23" forState:UIControlStateNormal];
            [self.but30 setTitle:@"24" forState:UIControlStateNormal];
            [self.but31 setTitle:@"25" forState:UIControlStateNormal];
            [self.but32 setTitle:@"26" forState:UIControlStateNormal];
            [self.but33 setTitle:@"27" forState:UIControlStateNormal];
            [self.but34 setTitle:@"28" forState:UIControlStateNormal];
            [self.but35 setTitle:@"29" forState:UIControlStateNormal];

        }else if(month== 2){
            if(daysOfMonth.count==28){
                [self.but1 setTitle:@"" forState:UIControlStateNormal];
                [self.but2 setTitle:@"" forState:UIControlStateNormal];
                [self.but3 setTitle:@"" forState:UIControlStateNormal];
                [self.but4 setTitle:@"" forState:UIControlStateNormal];
                [self.but5 setTitle:@"" forState:UIControlStateNormal];
                [self.but6 setTitle:@"" forState:UIControlStateNormal];
                [self.but7 setTitle:@"1" forState:UIControlStateNormal];
                [self.but8 setTitle:@"2" forState:UIControlStateNormal];
                [self.but9 setTitle:@"3" forState:UIControlStateNormal];
                [self.but10 setTitle:@"4" forState:UIControlStateNormal];
                [self.but11 setTitle:@"5" forState:UIControlStateNormal];
                [self.but12 setTitle:@"6" forState:UIControlStateNormal];
                [self.but13 setTitle:@"7" forState:UIControlStateNormal];
                [self.but14 setTitle:@"8" forState:UIControlStateNormal];
                [self.but15 setTitle:@"9" forState:UIControlStateNormal];
                [self.but16 setTitle:@"10" forState:UIControlStateNormal];
                [self.but17 setTitle:@"11" forState:UIControlStateNormal];
                [self.but18 setTitle:@"12" forState:UIControlStateNormal];
                [self.but19 setTitle:@"13" forState:UIControlStateNormal];
                [self.but20 setTitle:@"14" forState:UIControlStateNormal];
                [self.but21 setTitle:@"15" forState:UIControlStateNormal];
                [self.but22 setTitle:@"16" forState:UIControlStateNormal];
                [self.but23 setTitle:@"17" forState:UIControlStateNormal];
                [self.but24 setTitle:@"18" forState:UIControlStateNormal];
                [self.but25 setTitle:@"19" forState:UIControlStateNormal];
                [self.but26 setTitle:@"20" forState:UIControlStateNormal];
                [self.but27 setTitle:@"21" forState:UIControlStateNormal];
                [self.but28 setTitle:@"22" forState:UIControlStateNormal];
                [self.but29 setTitle:@"23" forState:UIControlStateNormal];
                [self.but30 setTitle:@"24" forState:UIControlStateNormal];
                [self.but31 setTitle:@"25" forState:UIControlStateNormal];
                [self.but32 setTitle:@"26" forState:UIControlStateNormal];
                [self.but33 setTitle:@"27" forState:UIControlStateNormal];
                [self.but34 setTitle:@"28" forState:UIControlStateNormal];
                [self.but35 setTitle:@"" forState:UIControlStateNormal];

            } else{
                [self.but1 setTitle:@"" forState:UIControlStateNormal];
                [self.but2 setTitle:@"" forState:UIControlStateNormal];
                [self.but3 setTitle:@"" forState:UIControlStateNormal];
                [self.but4 setTitle:@"" forState:UIControlStateNormal];
                [self.but5 setTitle:@"" forState:UIControlStateNormal];
                [self.but6 setTitle:@"" forState:UIControlStateNormal];
                [self.but7 setTitle:@"1" forState:UIControlStateNormal];
                [self.but8 setTitle:@"2" forState:UIControlStateNormal];
                [self.but9 setTitle:@"3" forState:UIControlStateNormal];
                [self.but10 setTitle:@"4" forState:UIControlStateNormal];
                [self.but11 setTitle:@"5" forState:UIControlStateNormal];
                [self.but12 setTitle:@"6" forState:UIControlStateNormal];
                [self.but13 setTitle:@"7" forState:UIControlStateNormal];
                [self.but14 setTitle:@"8" forState:UIControlStateNormal];
                [self.but15 setTitle:@"9" forState:UIControlStateNormal];
                [self.but16 setTitle:@"10" forState:UIControlStateNormal];
                [self.but17 setTitle:@"11" forState:UIControlStateNormal];
                [self.but18 setTitle:@"12" forState:UIControlStateNormal];
                [self.but19 setTitle:@"13" forState:UIControlStateNormal];
                [self.but20 setTitle:@"14" forState:UIControlStateNormal];
                [self.but21 setTitle:@"15" forState:UIControlStateNormal];
                [self.but22 setTitle:@"16" forState:UIControlStateNormal];
                [self.but23 setTitle:@"17" forState:UIControlStateNormal];
                [self.but24 setTitle:@"18" forState:UIControlStateNormal];
                [self.but25 setTitle:@"19" forState:UIControlStateNormal];
                [self.but26 setTitle:@"20" forState:UIControlStateNormal];
                [self.but27 setTitle:@"21" forState:UIControlStateNormal];
                [self.but28 setTitle:@"22" forState:UIControlStateNormal];
                [self.but29 setTitle:@"23" forState:UIControlStateNormal];
                [self.but30 setTitle:@"24" forState:UIControlStateNormal];
                [self.but31 setTitle:@"25" forState:UIControlStateNormal];
                [self.but32 setTitle:@"26" forState:UIControlStateNormal];
                [self.but33 setTitle:@"27" forState:UIControlStateNormal];
                [self.but34 setTitle:@"28" forState:UIControlStateNormal];
                [self.but35 setTitle:@"29" forState:UIControlStateNormal];

            }
        }
    }
    
}
-(void)selectDate:(UIButton *)sender{
    if(sender.tag==1){
        [self.but1 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but1 setBackgroundColor:[UIColor whiteColor]];
    }
    if(sender.tag==2){
        [self.but2 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but2 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==3){
        [self.but3 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but3 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==4){
        [self.but4 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but4 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==5){
        [self.but5 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but5 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==6){
        [self.but6 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but6 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==7){
        [self.but7 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but7 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==8){
        [self.but8 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but8 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==9){
        [self.but9 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but9 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==10){
        [self.but10 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but10 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==11){
        [self.but11 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but11 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==12){
        [self.but12 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but12 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==13){
        [self.but13 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but13 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==14){
        [self.but14 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but14 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==15){
        [self.but15 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but15 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==16){
        [self.but16 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but16 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==17){
        [self.but17 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but17 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==18){
        [self.but18 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but18 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==19){
        [self.but19 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but19 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==20){
        [self.but20 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but20 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==21){
        [self.but21 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but21 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==22){
        [self.but22 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but22 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==23){
        [self.but23 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but23 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==24){
        [self.but24 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but24 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==25){
        [self.but25 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but25 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==26){
        [self.but26 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but26 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==27){
        [self.but27 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but27 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==28){
        [self.but28 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but28 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==29){
        [self.but29 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but29 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==30){
        [self.but30 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but30 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==31){
        [self.but31 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but31 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==32){
        [self.but32 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but32 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==33){
        [self.but33 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but33 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==34){
        [self.but34 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but34 setBackgroundColor:[UIColor whiteColor]];
    }if(sender.tag==35){
        [self.but35 setBackgroundColor:[UIColor yellowColor]];
    }else{
        [self.but35 setBackgroundColor:[UIColor whiteColor]];
    }
}
@end
