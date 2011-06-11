//
//  UINavigationBar+Backgrounds.m
//  MKNavigationBar
//
//  Created by Max Kramer on 03/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UINavigationBar+Backgrounds.h"
#define kTITLE_LABEL 10
#define kBACKGROUND_IMAGEVIEW 22


@implementation UINavigationBar (UINavigationBar_Backgrounds)
- (void) setBackgroundImage:(UIImage *)image {
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [imageView setFrame:self.frame];
    [imageView setTag:kBACKGROUND_IMAGEVIEW];
    [self addSubview:imageView];
    [self sendSubviewToBack:imageView];
    [imageView release];
}
- (void) clearBackgroundImage {
    for (UIView *view in [self subviews]) {
        if ([view class] == [UIImageView class] && view.tag == kBACKGROUND_IMAGEVIEW) {
            [view removeFromSuperview];
        }
    }
}
- (void) setBackgroundColour:(UIColor *)backgroundColor {
    [self setTintColor:backgroundColor];
}
- (void) setTitle:(NSString *)title colour:(UIColor *)colour andFont:(UIFont *)font {
    UIView *view = [[[UIView alloc] initWithFrame:[self frame]] autorelease];
    [view setTag:kTITLE_LABEL];
    [view setBackgroundColor:[UIColor clearColor]];
    UILabel *label = [[[UILabel alloc] initWithFrame:[view frame]] autorelease];
    [label setText:title];
    [label setTextAlignment:UITextAlignmentCenter];
    [label setTextColor:colour];
    [label setBackgroundColor:[UIColor clearColor]];
    [view addSubview:label];
    [self addSubview:view];
}
- (void) clearTitleLabel {
    if ([self viewWithTag:kTITLE_LABEL]) {
        [[self viewWithTag:kTITLE_LABEL] removeFromSuperview];
    }
}

@end
