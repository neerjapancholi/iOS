//
//  TempConverterViewCtrl.h
//  TemperatureConverter
//
//  Created by Neerja Pancholi on 10/12/13.
//  Copyright (c) 2013 neerjapancholi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TempConverterViewCtrl : UIViewController

@property (nonatomic, strong) IBOutlet UITextField * textField;
@property (nonatomic, strong) IBOutlet UILabel * displayLabel;
@property (nonatomic, strong) IBOutlet UILabel * labelOfTextField;
@property (nonatomic, strong) IBOutlet UILabel * labelOfDisplay;
@property (nonatomic, strong) IBOutlet UIButton * swapButton;
@property (nonatomic, strong) IBOutlet UIButton * convertButton;

- (IBAction)onTap:(id)sender;
- (void) convertBetweenFAndC;

@end
