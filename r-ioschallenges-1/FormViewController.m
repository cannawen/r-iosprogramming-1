//
//  ViewController.m
//  r-ioschallenges-1
//
//  Created by Canna Wen on 2014-08-07.
//  Copyright (c) 2014 Canna Wen. All rights reserved.
//

#import "FormViewController.h"

@interface FormViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation FormViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self clearTextFields];
}

- (void)clearTextFields {
    self.usernameTextField.text = nil;
    self.passwordTextField.text = nil;
}

- (IBAction)submitButtonTapped:(id)sender {

}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    NSString *username = self.usernameTextField.text;
    NSString *password = self.passwordTextField.text;
    
    if ([self isAtLeastEightCharactersLong:username] &&
        [self isAlphabeticString:username] &&
        [self isAtLeastEightCharactersLong:password]) {
        [self.view endEditing:YES];
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isAtLeastEightCharactersLong:(NSString *)string {
    if (string.length >= 8) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isAlphabeticString:(NSString *)string {
    NSCharacterSet *lowerCaseLetterCharacterSet = [NSCharacterSet lowercaseLetterCharacterSet];
    NSCharacterSet *upperCaseLetterCharacterSet = [NSCharacterSet uppercaseLetterCharacterSet];
    NSMutableCharacterSet *characterSet = [lowerCaseLetterCharacterSet mutableCopy];
    [characterSet formUnionWithCharacterSet:upperCaseLetterCharacterSet];
    characterSet = [[characterSet invertedSet] mutableCopy];
    if ([string rangeOfCharacterFromSet:characterSet].location==NSNotFound) {
        return YES;
    } else {
        return NO;
    }
}

- (IBAction)unwindToFormViewController:(UIStoryboardSegue *)segue {
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
}


@end
