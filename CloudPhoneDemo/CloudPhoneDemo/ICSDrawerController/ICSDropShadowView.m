//
//  ICSDropShadowView.m
//
//  Created by Vito Modena
//
//  Copyright (c) 2014 ice cream studios s.r.l. - http://icecreamstudios.com
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//  the Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//  FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//  IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import "ICSDropShadowView.h"

@implementation ICSDropShadowView

- (void)drawRect:(CGRect)rect
{
    UIBezierPath *shadowPath;
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)
    {
        self.layer.shadowOffset = CGSizeMake(0, 20);
        shadowPath = [UIBezierPath bezierPathWithRect:CGRectMake(self.bounds.origin.x, self.bounds.origin.y, self.bounds.size.width, self.bounds.size.height-20)];
    }
    else
    {
        self.layer.shadowOffset = CGSizeZero;
        shadowPath = [UIBezierPath bezierPathWithRect:self.bounds];
    }
    self.layer.shadowOpacity = 0.6f;
    self.layer.shadowPath = shadowPath.CGPath;
}

@end
