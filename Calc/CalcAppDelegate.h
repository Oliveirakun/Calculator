//
//  CalcAppDelegate.h
//  Calc
//
//  Created by Alerta SMS on 7/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CalcViewController;

@interface CalcAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet CalcViewController *viewController;

@end
