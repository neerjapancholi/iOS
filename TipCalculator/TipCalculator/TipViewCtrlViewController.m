//
//  TipViewCtrlViewController.m
//  TipCalculator
//
//  Created by Neerja Pancholi on 9/18/13.
//  Copyright (c) 2013 neerjapancholi. All rights reserved.
//

#import "TipViewCtrlViewController.h"

@interface TipViewCtrlViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipCtrl;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UITextField *billTextField;

- (IBAction)onTap:(id)sender;
- (void)updateValues;
@end

@implementation TipViewCtrlViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Tip Calculator";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self updateValues];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
    [self updateValues];
}

- (void)updateValues
{
    float billAmount = [self.billTextField.text floatValue];
    NSArray *tipValues = @[@(0.1), @(0.15), @(0.2)];
    float tipAmount = billAmount * [tipValues[self.tipCtrl.selectedSegmentIndex] floatValue];
    float totalAmount = tipAmount + billAmount;
    self.tipLabel.text = [NSString stringWithFormat:@"$%0.2f", tipAmount ];
    self.totalLabel.text = [NSString stringWithFormat:@"$%0.2f", totalAmount];
}
@end
