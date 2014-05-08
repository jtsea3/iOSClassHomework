//
//  ViewController.h
//  UI Switch & Slider
//
//  Created by John on 5/7/14.
//  Copyright (c) 2014 Sea3 Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UISlider *slider;

- (IBAction)logMessage;
- (IBAction)toggleChanged;
- (IBAction)sliderMoved: (UISlider *)slider;

@end



/*
 Create a new single view application in Xcode
 Add a button in the storyboard that logs a message to the console when it is tapped.
 Add a UISwitch to your view controller and NSLog a message to the console when it is toggled.
 Add a UISlider to your view controller and NSLog a message to the console with the current slider value, but only when the value is greater than 0.5
 */

