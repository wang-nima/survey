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
    // get the user input
    NSString *s = self.Amount.text;
    float pref = self.Preference.value;
    NSLog(@"%@", s);
    NSLog(@"%f", pref);
    
    // send http post request
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setHTTPMethod:@"GET"];
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://halogen-goods-93306.appspot.com/sign?content=%@&pref=%@", s, [[NSNumber numberWithFloat:pref] stringValue]]];
    [request setURL:url];
    //[request setValue:s forKey:@"content"];
    
    // check error
    NSError *error = [[NSError alloc] init];
    NSHTTPURLResponse *responseCode = nil;
    [NSURLConnection sendSynchronousRequest:request returningResponse:&responseCode error:&error];
    
    if([responseCode statusCode] != 200){
        NSLog(@"Error getting %@, HTTP status code %li", url, (long)[responseCode statusCode]);
        
    } else {
        // success
        NSLog(@"success");
    }
}


@end
