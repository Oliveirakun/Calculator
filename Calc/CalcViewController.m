//
//  CalcViewController.m
//  Calc
//
//  Created by Alerta SMS on 7/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CalcViewController.h"

@implementation CalcViewController
@synthesize basicCalculator, lblDisplay, strDisplay, operation;

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.strDisplay = [[NSString alloc]init];
    operation = [[NSString alloc]init];
    afterEqual = FALSE;
    showNumberValid = TRUE;
    enablePoint = TRUE;
    enableCount = FALSE;
    lblDisplay.text = @"0";
    
}

-(void)viewDidUnLoad{
    lblDisplay = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}


-(IBAction)showClear{
    self.strDisplay = @"";
    lblDisplay.text = self.strDisplay;
    lblDisplay.text = @"0";
    operation = @"";
}

-(IBAction)showDivide{
    if(!afterEqual){
        [self showEqual];
    enableCount = TRUE;
    }
    operation = @"4";
    operator01 = [self.strDisplay doubleValue];
    self.strDisplay = @"";
}

-(IBAction)show9{
    
    [self showNumber:@"9"];
    
}

-(IBAction)show8{
    
    [self showNumber:@"8"];
    
}

-(IBAction)show7{
    
    [self showNumber:@"7"];
    
}

-(IBAction)show6{
    
    [self showNumber:@"6"];
    
}

-(IBAction)show5{
    
    [self showNumber:@"5"];
    
}

-(IBAction)show4{
    
    [self showNumber:@"4"];
    
}

-(IBAction)show3{
    
    [self showNumber:@"3"];
    
}

-(IBAction)show2{
    
    [self showNumber:@"2"];
    
}

-(IBAction)show1{
    
    [self showNumber:@"1"];
    
}

-(IBAction)show0{
    [self showNumber:@"0"];
}

-(IBAction)showMultiply{
    if(!afterEqual){
        [self showEqual];
        enableCount = TRUE;
    }
    operation = @"3";
    operator01 = [self.strDisplay doubleValue];
    self.strDisplay = @"";
    enableCount = FALSE;
    
}

-(IBAction)showSubtract{
    if(!afterEqual){
        [self showEqual];
        enableCount = TRUE;
    }
    operation = @"2";
    operator01 = [self.strDisplay doubleValue];
    self.strDisplay = @"";
    enableCount = FALSE;
    
}

-(IBAction)showAdd{
    if(!afterEqual){
        [self showEqual];
        enableCount = TRUE;
    }
    operation = @"1";
    operator01 = [self.strDisplay doubleValue];
    self.strDisplay = @"";
    enableCount = FALSE;
    
}

-(IBAction)showEqual{
    if(operation != @""){
        switch ([operation intValue]) {
            case 1:
                basicCalculator = [[Calculator alloc]init];
                [basicCalculator setAccumalator:operator01];
                [basicCalculator add:[self.strDisplay doubleValue]];
                result = [basicCalculator getAccumulator];
                [self showClear];
                self.strDisplay = [self.strDisplay stringByAppendingFormat:@"%g",result];
                lblDisplay.text = self.strDisplay;
                operator01 = 0;
                result = 0;
                [basicCalculator release];
                afterEqual = TRUE;
                break;
                
            case 2:
                basicCalculator = [[Calculator alloc]init];
                [basicCalculator setAccumalator:operator01];
                [basicCalculator subtract:[self.strDisplay doubleValue]];
                result = [basicCalculator getAccumulator];
                [self showClear];
                self.strDisplay = [self.strDisplay stringByAppendingFormat:@"%g",result];
                lblDisplay.text = self.strDisplay;
                operator01 = 0;
                result = 0;
                [basicCalculator release];
                afterEqual = TRUE;
                break;

                
            case 3:
                basicCalculator = [[Calculator alloc]init];
                [basicCalculator setAccumalator:operator01];
                [basicCalculator multiply:[self.strDisplay doubleValue]];
                result = [basicCalculator getAccumulator];
                [self showClear];
                self.strDisplay = [self.strDisplay stringByAppendingFormat:@"%g",result];
                lblDisplay.text = self.strDisplay;
                operator01 = 0;
                result = 0;
                [basicCalculator release];
                afterEqual = TRUE;
                break;
 
            case 4:
                basicCalculator = [[Calculator alloc]init];
                [basicCalculator setAccumalator:operator01];
                [basicCalculator divide:[self.strDisplay doubleValue]];
                result = [basicCalculator getAccumulator];
                [self showClear];
                self.strDisplay = [self.strDisplay stringByAppendingFormat:@"%g",result];
                lblDisplay.text = self.strDisplay;
                operator01 = 0;
                result = 0;
                [basicCalculator release];
                afterEqual = TRUE;
                break;
                
            
            default:
                break;
        }
    }
    
}

-(void)showNumber:(NSString *)number{
    if(afterEqual && operation == @""){
        afterEqual = FALSE;
        [self showClear];
    }
    
    if(afterEqual){
        afterEqual = FALSE;
    }
    
    if([self.strDisplay doubleValue] == 0 && [number doubleValue] == 0){
        showNumberValid = FALSE;
    }
    
    if(showNumberValid){
        self.strDisplay = [self.strDisplay stringByAppendingFormat:@"%@",number];
        lblDisplay.text = self.strDisplay;
        
    }
    
    else if (number == @"" && [self.strDisplay doubleValue] == 0)  {
        self.strDisplay = [self.strDisplay stringByAppendingFormat:@"0"];
        lblDisplay.text = self.strDisplay;
        
    }
    
    else if(!enablePoint && [number doubleValue] == 0){
        self.strDisplay = [self.strDisplay stringByAppendingFormat:@"0"];
        lblDisplay.text = self.strDisplay;
    }
    
    else{
        lblDisplay.text = @"0";
    }
    
}



@end
