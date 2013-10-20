//
//  TempConverterViewCtrl.m
//  TemperatureConverter
//
//  Created by Neerja Pancholi on 10/12/13.
//  Copyright (c) 2013 neerjapancholi. All rights reserved.
//

#import "TempConverterViewCtrl.h"

@interface TempConverterViewCtrl ()


@end

@implementation TempConverterViewCtrl
bool convertFtoC = true;

- (IBAction)textFieldEdited:(id)sender {
    [ self convertBetweenFAndC];
}

- (IBAction)swapButtonPressed:(id)sender
{
    convertFtoC = !convertFtoC;
    NSString *tempString = NULL;
    tempString = _labelOfDisplay.text;
    _labelOfDisplay.text = _labelOfTextField.text;
    _labelOfTextField.text = tempString;
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
    [self convertBetweenFAndC];
}

- (void)convertBetweenFAndC
{
    if ( convertFtoC )
    {
        int fValue = [_textField.text intValue];
        int cValue = (fValue - 32) *  5/9;
        _displayLabel.text = [NSString stringWithFormat:@"%d", cValue];
    }
    else
    {
        int cValue = [_textField.text intValue];
        int fValue = (cValue *  9/5) + 32;
        _displayLabel.text = [NSString stringWithFormat:@"%d", fValue];
    }
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Temperature Converter";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
