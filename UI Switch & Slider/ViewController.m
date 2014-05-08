//
//  ViewController.m
//  UI Switch & Slider
//
//  Created by John on 5/7/14.
//  Copyright (c) 2014 Sea3 Software. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    float _currentValue;
    float _newSliderValue;
    float _oldSliderValue;
    float _sliderChange;
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _currentValue = self.slider.value;
    _newSliderValue = 0;
//    _oldSliderValue = 0;
    _sliderChange = 0;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) logMessage
{
    NSLog(@"The Button has been pressed");
}
- (IBAction) toggleChanged
{
    NSLog(@"The Toggle Switch has been flipped");
}
- (IBAction)sliderMoved: (UISlider *)slider;
{
    _newSliderValue = slider.value;

    _sliderChange = ABS(_currentValue - _newSliderValue);
    _currentValue = slider.value;


    if (_sliderChange > .5)
    {
        NSLog(@"The Slider moved: %f", _sliderChange);
        NSLog(@"The value of the slider is: %f", slider.value);
    }
    
/*  Notes to myself
Initialize _newSliderValue

++Move the Slider++++++++++++
    _sliderChange = abs val of _currentValue - _newSliderValue.
    If _sliderChange is >= .5, NSLog _sliderChange, else do nothing

 //    NSLog(@"The value of the slider is: %f", slider.value);
 //    NSLog(@"The _currentValue is: %f", self.slider.value);
 //    NSLog(@"The _newSliderValue is: %f", _newSliderValue);
 //    NSLog(@"The _oldSliderValue is: %f",_oldSliderValue);
 
 Had some trouble reporting out the variable values to be consistent with what the math was getting.  Talk to tchrs about this.
*/
}

@end
