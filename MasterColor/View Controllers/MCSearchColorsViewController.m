//
//  SearchColorsViewController.m
//  MasterColor
//
//  Created by Michael Salkin on 2/24/16.
//  Copyright © 2016 MAS. All rights reserved.
//

#import "MCSearchColorsViewController.h"
#import "MCAPI.h"

@interface MCSearchColorsViewController ()

@end

@implementation MCSearchColorsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)testAPI:(id)sender {
    [[[MCAPI alloc] init] callWithParams:nil endpoint:@"colors" withSuccess:^(NSURLSessionTask *task, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

@end
