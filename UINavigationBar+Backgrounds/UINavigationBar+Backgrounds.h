//
//  UINavigationBar+Backgrounds.h
//  MKNavigationBar
//
//  Created by Max Kramer on 03/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UINavigationBar (UINavigationBar_Backgrounds)
- (void) clearBackgroundImage;
- (void) setBackgroundImage:(UIImage *)image;
- (void) setBackgroundColour:(UIColor *)backgroundColour;
- (void) setTitle:(NSString *)title colour:(UIColor *)colour andFont:(UIFont *)font;
- (void) clearTitleLabel;
@end