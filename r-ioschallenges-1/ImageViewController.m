//
//  ImageViewController.m
//  r-ioschallenges-1
//
//  Created by Canna Wen on 2014-08-07.
//  Copyright (c) 2014 Canna Wen. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()
@property (weak, nonatomic) IBOutlet UILabel *helloWorldLabel;

@end

@implementation ImageViewController

- (IBAction)imageTapped:(id)sender {
    self.helloWorldLabel.hidden = NO;
}

@end
