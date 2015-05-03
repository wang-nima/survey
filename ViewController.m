//
//  ViewController.m
//  survey
//
//  Created by shiyu wang on 5/2/15.
//  Copyright (c) 2015 shiyu wang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *SubmitButton;
@property (weak, nonatomic) IBOutlet UITextField *Amount;
@property (weak, nonatomic) IBOutlet UISlider *Preference;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SubmitButtonPressed:(id)sender {
    //NSLog(@"Button Pressed");
    NSString *s = self.Amount.text;
    float pref = self.Preference.value;
    NSLog(@"%@", s);
    NSLog(@"%f", pref);
}

@end
