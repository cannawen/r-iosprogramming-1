//
//  InsetTextField.m
//  r-ioschallenges-1
//
//  Created by Canna Wen on 2014-08-07.
//  Copyright (c) 2014 Canna Wen. All rights reserved.
//

#import "InsetTextField.h"

@implementation InsetTextField

- (CGRect)textRectForBounds:(CGRect)bounds {
    return CGRectInset( bounds , 10 , 0 );
}

- (CGRect)editingRectForBounds:(CGRect)bounds {
    return CGRectInset( bounds , 10 , 0 );
}

@end
