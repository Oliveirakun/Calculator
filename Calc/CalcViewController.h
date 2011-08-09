//
//  CalcViewController.h
//  Calc
//
//  Created by Alerta SMS on 7/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"


@interface CalcViewController : UIViewController {
    
    Calculator *basicCalculator;
    IBOutlet UILabel *lblDisplay;
    double operator01,result;
    NSString *strDisplay, *operation;
    BOOL enablePoint, afterEqual, showNumberValid, enableCount;
    
}

@property (nonatomic, retain)Calculator *basicCalculator;
@property (nonatomic, retain)UILabel *lblDisplay;
@property (nonatomic, retain)NSString *strDisplay, *operation;

-(IBAction)showClear;
-(IBAction)showDivide;
-(IBAction)show9;
-(IBAction)show8;
-(IBAction)show7;
-(IBAction)show6;
-(IBAction)show5;
-(IBAction)show4;
-(IBAction)show3;
-(IBAction)show2;
-(IBAction)show1;
-(IBAction)show0;
-(IBAction)showAdd;
-(IBAction)showEqual;
-(IBAction)showMultiply;
-(IBAction)showSubtract;

-(void)showNumber:(NSString *)number;
  

@end
