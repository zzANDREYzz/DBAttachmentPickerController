//
//  UIImage+DB.m
//  DBAttachmentPickerController
//
//  Created by Denis Bogatyrev on 14.03.16.
//
//  The MIT License (MIT)
//  Copyright (c) 2016 Denis Bogatyrev.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"),
//  to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
//  and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
//  IN THE SOFTWARE.
//

#import "UIImage+DB.h"

@implementation UIImage (DB)

#pragma mark Drawing Methods

+ (void)drawSeriesIcon
{
    //// Color Declarations
    UIColor* color = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    
    //// Group
    {
        //// Rectangle Drawing
        UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(0, 11, 48, 35)];
        [color setFill];
        [rectanglePath fill];
        
        
        //// Rectangle 2 Drawing
        UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(4, 7, 41, 3)];
        [color setFill];
        [rectangle2Path fill];
        
        
        //// Rectangle 3 Drawing
        UIBezierPath* rectangle3Path = [UIBezierPath bezierPathWithRect: CGRectMake(7, 4, 35, 2)];
        [color setFill];
        [rectangle3Path fill];
    }
}

+ (void)drawIntervalIcon
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    UIColor* color = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    
    //// Group
    {
        //// ShortItems
        {
            //// short15 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -345 * M_PI / 180);
            
            UIBezierPath* short15Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 2)];
            [color setFill];
            [short15Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// short45 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -315 * M_PI / 180);
            
            UIBezierPath* short45Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 2)];
            [color setFill];
            [short45Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// short75 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -285 * M_PI / 180);
            
            UIBezierPath* short75Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 2)];
            [color setFill];
            [short75Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// short105 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -255 * M_PI / 180);
            
            UIBezierPath* short105Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 2)];
            [color setFill];
            [short105Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// short135 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -225 * M_PI / 180);
            
            UIBezierPath* short135Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 2)];
            [color setFill];
            [short135Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// short165 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -195 * M_PI / 180);
            
            UIBezierPath* short165Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 2)];
            [color setFill];
            [short165Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// short195 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -165 * M_PI / 180);
            
            UIBezierPath* short195Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 2)];
            [color setFill];
            [short195Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// short225 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -135 * M_PI / 180);
            
            UIBezierPath* short225Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 2)];
            [color setFill];
            [short225Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// short255 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -105 * M_PI / 180);
            
            UIBezierPath* short255Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 2)];
            [color setFill];
            [short255Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// short285 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -75 * M_PI / 180);
            
            UIBezierPath* short285Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 2)];
            [color setFill];
            [short285Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// short315 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -45 * M_PI / 180);
            
            UIBezierPath* short315Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 2)];
            [color setFill];
            [short315Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// short345 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -15 * M_PI / 180);
            
            UIBezierPath* short345Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 2)];
            [color setFill];
            [short345Path fill];
            
            CGContextRestoreGState(context);
        }
        
        
        //// LongItems
        {
            //// long0 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            
            UIBezierPath* long0Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 8)];
            [color setFill];
            [long0Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// long30 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -330 * M_PI / 180);
            
            UIBezierPath* long30Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 8)];
            [color setFill];
            [long30Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// long60 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -300 * M_PI / 180);
            
            UIBezierPath* long60Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 8)];
            [color setFill];
            [long60Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// long90 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -270 * M_PI / 180);
            
            UIBezierPath* long90Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 8)];
            [color setFill];
            [long90Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// long120 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -240 * M_PI / 180);
            
            UIBezierPath* long120Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 8)];
            [color setFill];
            [long120Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// long150 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -210 * M_PI / 180);
            
            UIBezierPath* long150Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 8)];
            [color setFill];
            [long150Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// long180 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -180 * M_PI / 180);
            
            UIBezierPath* long180Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 8)];
            [color setFill];
            [long180Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// long210 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -150 * M_PI / 180);
            
            UIBezierPath* long210Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 8)];
            [color setFill];
            [long210Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// long240 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -120 * M_PI / 180);
            
            UIBezierPath* long240Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 8)];
            [color setFill];
            [long240Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// long270 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -90 * M_PI / 180);
            
            UIBezierPath* long270Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 8)];
            [color setFill];
            [long270Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// long300 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -60 * M_PI / 180);
            
            UIBezierPath* long300Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 8)];
            [color setFill];
            [long300Path fill];
            
            CGContextRestoreGState(context);
            
            
            //// long330 Drawing
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, 24, 24);
            CGContextRotateCTM(context, -30 * M_PI / 180);
            
            UIBezierPath* long330Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 8)];
            [color setFill];
            [long330Path fill];
            
            CGContextRestoreGState(context);
        }
    }
}

+ (void)drawSlowIcon
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    UIColor* color = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    
    //// Group
    {
        //// Rectangle Drawing
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 24, 24);
        
        UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 5)];
        [color setFill];
        [rectanglePath fill];
        
        CGContextRestoreGState(context);
        
        
        //// Rectangle 2 Drawing
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 24, 24);
        CGContextRotateCTM(context, 30 * M_PI / 180);
        
        UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 5)];
        [color setFill];
        [rectangle2Path fill];
        
        CGContextRestoreGState(context);
        
        
        //// Rectangle 3 Drawing
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 24, 24);
        CGContextRotateCTM(context, 60 * M_PI / 180);
        
        UIBezierPath* rectangle3Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 5)];
        [color setFill];
        [rectangle3Path fill];
        
        CGContextRestoreGState(context);
        
        
        //// Rectangle 4 Drawing
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 24, 24);
        CGContextRotateCTM(context, 90 * M_PI / 180);
        
        UIBezierPath* rectangle4Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 5)];
        [color setFill];
        [rectangle4Path fill];
        
        CGContextRestoreGState(context);
        
        
        //// Rectangle 5 Drawing
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 24, 24);
        CGContextRotateCTM(context, 120 * M_PI / 180);
        
        UIBezierPath* rectangle5Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 5)];
        [color setFill];
        [rectangle5Path fill];
        
        CGContextRestoreGState(context);
        
        
        //// Rectangle 6 Drawing
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 24, 24);
        CGContextRotateCTM(context, 150 * M_PI / 180);
        
        UIBezierPath* rectangle6Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 5)];
        [color setFill];
        [rectangle6Path fill];
        
        CGContextRestoreGState(context);
        
        
        //// Rectangle 7 Drawing
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 24, 24);
        CGContextRotateCTM(context, -180 * M_PI / 180);
        
        UIBezierPath* rectangle7Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 5)];
        [color setFill];
        [rectangle7Path fill];
        
        CGContextRestoreGState(context);
        
        
        //// Rectangle 8 Drawing
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 24, 24);
        CGContextRotateCTM(context, -150 * M_PI / 180);
        
        UIBezierPath* rectangle8Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 5)];
        [color setFill];
        [rectangle8Path fill];
        
        CGContextRestoreGState(context);
        
        
        //// Rectangle 9 Drawing
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 24, 24);
        CGContextRotateCTM(context, -120 * M_PI / 180);
        
        UIBezierPath* rectangle9Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 5)];
        [color setFill];
        [rectangle9Path fill];
        
        CGContextRestoreGState(context);
        
        
        //// Rectangle 10 Drawing
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 24, 24);
        CGContextRotateCTM(context, -90 * M_PI / 180);
        
        UIBezierPath* rectangle10Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 5)];
        [color setFill];
        [rectangle10Path fill];
        
        CGContextRestoreGState(context);
        
        
        //// Rectangle 11 Drawing
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 24, 24);
        CGContextRotateCTM(context, -60 * M_PI / 180);
        
        UIBezierPath* rectangle11Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 5)];
        [color setFill];
        [rectangle11Path fill];
        
        CGContextRestoreGState(context);
        
        
        //// Rectangle 12 Drawing
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 24, 24);
        CGContextRotateCTM(context, -30 * M_PI / 180);
        
        UIBezierPath* rectangle12Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -22, 2, 5)];
        [color setFill];
        [rectangle12Path fill];
        
        CGContextRestoreGState(context);
    }
}

+ (void)drawVideoIcon
{
    //// Color Declarations
    UIColor* color = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    
    //// Group
    {
        //// Rectangle Drawing
        UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(0, 11, 34, 27) cornerRadius: 5];
        [color setFill];
        [rectanglePath fill];
        
        
        //// Bezier Drawing
        UIBezierPath* bezierPath = UIBezierPath.bezierPath;
        [bezierPath moveToPoint: CGPointMake(36, 21.38)];
        [bezierPath addLineToPoint: CGPointMake(48, 11)];
        [bezierPath addLineToPoint: CGPointMake(48, 38)];
        [bezierPath addLineToPoint: CGPointMake(36, 27.62)];
        [bezierPath addLineToPoint: CGPointMake(36, 21.38)];
        [bezierPath closePath];
        [color setFill];
        [bezierPath fill];
    }
}

+ (void)drawPanoramaIcon
{
    //// Color Declarations
    UIColor* color = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = UIBezierPath.bezierPath;
    [rectanglePath moveToPoint: CGPointMake(2, 38)];
    [rectanglePath addLineToPoint: CGPointMake(7, 35)];
    [rectanglePath addLineToPoint: CGPointMake(13, 33)];
    [rectanglePath addLineToPoint: CGPointMake(20, 32)];
    [rectanglePath addLineToPoint: CGPointMake(28, 32)];
    [rectanglePath addLineToPoint: CGPointMake(35, 33)];
    [rectanglePath addLineToPoint: CGPointMake(41, 35)];
    [rectanglePath addLineToPoint: CGPointMake(46, 38)];
    [rectanglePath addLineToPoint: CGPointMake(46, 11)];
    [rectanglePath addLineToPoint: CGPointMake(41, 14)];
    [rectanglePath addLineToPoint: CGPointMake(35, 16)];
    [rectanglePath addLineToPoint: CGPointMake(28, 17)];
    [rectanglePath addLineToPoint: CGPointMake(20, 17)];
    [rectanglePath addLineToPoint: CGPointMake(13, 16)];
    [rectanglePath addLineToPoint: CGPointMake(7, 14)];
    [rectanglePath addLineToPoint: CGPointMake(2, 11)];
    [rectanglePath addLineToPoint: CGPointMake(2, 38)];
    [rectanglePath closePath];
    [color setFill];
    [rectanglePath fill];
}

+ (void)drawSelfieIcon
{
    //// Color Declarations
    UIColor* color = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    
    //// Rectangle 2 Drawing
    UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(6, 12, 4, 2)];
    [color setFill];
    [rectangle2Path fill];
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
    [bezier2Path moveToPoint: CGPointMake(24, 18)];
    [bezier2Path addCurveToPoint: CGPointMake(15.23, 22.54) controlPoint1: CGPointMake(20.23, 18) controlPoint2: CGPointMake(16.94, 19.41)];
    [bezier2Path addCurveToPoint: CGPointMake(14, 28) controlPoint1: CGPointMake(14.45, 23.98) controlPoint2: CGPointMake(14, 25.79)];
    [bezier2Path addCurveToPoint: CGPointMake(23, 37) controlPoint1: CGPointMake(14, 35) controlPoint2: CGPointMake(19, 37)];
    [bezier2Path addLineToPoint: CGPointMake(25, 37)];
    [bezier2Path addCurveToPoint: CGPointMake(25, 36) controlPoint1: CGPointMake(25, 36.93) controlPoint2: CGPointMake(25, 36)];
    [bezier2Path addLineToPoint: CGPointMake(23, 36)];
    [bezier2Path addCurveToPoint: CGPointMake(15, 28) controlPoint1: CGPointMake(17.5, 36) controlPoint2: CGPointMake(15, 31.5)];
    [bezier2Path addCurveToPoint: CGPointMake(15.93, 23.58) controlPoint1: CGPointMake(15, 26.39) controlPoint2: CGPointMake(15.31, 24.88)];
    [bezier2Path addCurveToPoint: CGPointMake(24, 19) controlPoint1: CGPointMake(17.24, 20.84) controlPoint2: CGPointMake(19.93, 19)];
    [bezier2Path addCurveToPoint: CGPointMake(32, 27) controlPoint1: CGPointMake(30, 19) controlPoint2: CGPointMake(32, 23)];
    [bezier2Path addCurveToPoint: CGPointMake(32, 28) controlPoint1: CGPointMake(32, 28) controlPoint2: CGPointMake(32, 28)];
    [bezier2Path addLineToPoint: CGPointMake(29, 28)];
    [bezier2Path addLineToPoint: CGPointMake(32.5, 34)];
    [bezier2Path addLineToPoint: CGPointMake(36, 28)];
    [bezier2Path addLineToPoint: CGPointMake(33, 28)];
    [bezier2Path addCurveToPoint: CGPointMake(33, 27) controlPoint1: CGPointMake(33, 28) controlPoint2: CGPointMake(33, 29)];
    [bezier2Path addCurveToPoint: CGPointMake(24, 18) controlPoint1: CGPointMake(33, 21.5) controlPoint2: CGPointMake(29.5, 18)];
    [bezier2Path closePath];
    [bezier2Path moveToPoint: CGPointMake(29, 10)];
    [bezier2Path addLineToPoint: CGPointMake(34, 15)];
    [bezier2Path addLineToPoint: CGPointMake(38.89, 15)];
    [bezier2Path addCurveToPoint: CGPointMake(42.32, 15.26) controlPoint1: CGPointMake(40.65, 15) controlPoint2: CGPointMake(41.53, 15)];
    [bezier2Path addLineToPoint: CGPointMake(42.47, 15.3)];
    [bezier2Path addCurveToPoint: CGPointMake(44.7, 17.53) controlPoint1: CGPointMake(43.51, 15.68) controlPoint2: CGPointMake(44.32, 16.49)];
    [bezier2Path addCurveToPoint: CGPointMake(45, 21.11) controlPoint1: CGPointMake(45, 18.47) controlPoint2: CGPointMake(45, 19.35)];
    [bezier2Path addLineToPoint: CGPointMake(45, 36.89)];
    [bezier2Path addCurveToPoint: CGPointMake(44.74, 40.32) controlPoint1: CGPointMake(45, 38.65) controlPoint2: CGPointMake(45, 39.53)];
    [bezier2Path addLineToPoint: CGPointMake(44.7, 40.47)];
    [bezier2Path addCurveToPoint: CGPointMake(42.47, 42.7) controlPoint1: CGPointMake(44.32, 41.51) controlPoint2: CGPointMake(43.51, 42.32)];
    [bezier2Path addCurveToPoint: CGPointMake(38.89, 43) controlPoint1: CGPointMake(41.53, 43) controlPoint2: CGPointMake(40.65, 43)];
    [bezier2Path addLineToPoint: CGPointMake(8.11, 43)];
    [bezier2Path addCurveToPoint: CGPointMake(4.68, 42.74) controlPoint1: CGPointMake(6.35, 43) controlPoint2: CGPointMake(5.47, 43)];
    [bezier2Path addLineToPoint: CGPointMake(4.53, 42.7)];
    [bezier2Path addCurveToPoint: CGPointMake(2.3, 40.47) controlPoint1: CGPointMake(3.49, 42.32) controlPoint2: CGPointMake(2.68, 41.51)];
    [bezier2Path addCurveToPoint: CGPointMake(2, 36.89) controlPoint1: CGPointMake(2, 39.53) controlPoint2: CGPointMake(2, 38.65)];
    [bezier2Path addLineToPoint: CGPointMake(2, 21.11)];
    [bezier2Path addCurveToPoint: CGPointMake(2.26, 17.68) controlPoint1: CGPointMake(2, 19.35) controlPoint2: CGPointMake(2, 18.47)];
    [bezier2Path addLineToPoint: CGPointMake(2.3, 17.53)];
    [bezier2Path addCurveToPoint: CGPointMake(4.53, 15.3) controlPoint1: CGPointMake(2.68, 16.49) controlPoint2: CGPointMake(3.49, 15.68)];
    [bezier2Path addCurveToPoint: CGPointMake(8.11, 15) controlPoint1: CGPointMake(5.47, 15) controlPoint2: CGPointMake(6.35, 15)];
    [bezier2Path addLineToPoint: CGPointMake(13, 15)];
    [bezier2Path addLineToPoint: CGPointMake(18, 10)];
    [bezier2Path addLineToPoint: CGPointMake(29, 10)];
    [bezier2Path closePath];
    [color setFill];
    [bezier2Path fill];
}

+ (void)drawFavoriteIcon
{
    //// Color Declarations
    UIColor* color = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint: CGPointMake(23.5, 45)];
    [bezierPath addLineToPoint: CGPointMake(3, 24)];
    [bezierPath addCurveToPoint: CGPointMake(1, 16) controlPoint1: CGPointMake(1.5, 22) controlPoint2: CGPointMake(1, 21)];
    [bezierPath addCurveToPoint: CGPointMake(12, 5) controlPoint1: CGPointMake(1, 11) controlPoint2: CGPointMake(4, 5)];
    [bezierPath addCurveToPoint: CGPointMake(23.5, 12) controlPoint1: CGPointMake(20, 5) controlPoint2: CGPointMake(23.5, 12)];
    [bezierPath addCurveToPoint: CGPointMake(35, 5) controlPoint1: CGPointMake(23.5, 12) controlPoint2: CGPointMake(26, 5)];
    [bezierPath addCurveToPoint: CGPointMake(46, 16) controlPoint1: CGPointMake(44, 5) controlPoint2: CGPointMake(46, 10)];
    [bezierPath addCurveToPoint: CGPointMake(44, 24) controlPoint1: CGPointMake(46, 21.5) controlPoint2: CGPointMake(44, 24)];
    [bezierPath addLineToPoint: CGPointMake(23.5, 45)];
    [bezierPath closePath];
    [color setFill];
    [bezierPath fill];
}

+ (void)drawScreenshotIcon
{
    //// Color Declarations
    UIColor* color = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint: CGPointMake(25.47, 4.5)];
    [bezierPath addLineToPoint: CGPointMake(21.75, 4.5)];
    [bezierPath addCurveToPoint: CGPointMake(21.31, 4.54) controlPoint1: CGPointMake(21.5, 4.5) controlPoint2: CGPointMake(21.41, 4.51)];
    [bezierPath addCurveToPoint: CGPointMake(21, 4.97) controlPoint1: CGPointMake(21.12, 4.6) controlPoint2: CGPointMake(21, 4.78)];
    [bezierPath addCurveToPoint: CGPointMake(21.31, 5.46) controlPoint1: CGPointMake(21, 5.22) controlPoint2: CGPointMake(21.12, 5.4)];
    [bezierPath addCurveToPoint: CGPointMake(22.53, 5.5) controlPoint1: CGPointMake(21.42, 5.5) controlPoint2: CGPointMake(21.53, 5.5)];
    [bezierPath addLineToPoint: CGPointMake(26.25, 5.5)];
    [bezierPath addCurveToPoint: CGPointMake(26.69, 5.46) controlPoint1: CGPointMake(26.47, 5.5) controlPoint2: CGPointMake(26.58, 5.5)];
    [bezierPath addCurveToPoint: CGPointMake(27, 5.02) controlPoint1: CGPointMake(26.88, 5.4) controlPoint2: CGPointMake(27, 5.22)];
    [bezierPath addCurveToPoint: CGPointMake(26.69, 4.54) controlPoint1: CGPointMake(27, 4.78) controlPoint2: CGPointMake(26.88, 4.6)];
    [bezierPath addCurveToPoint: CGPointMake(25.47, 4.5) controlPoint1: CGPointMake(26.58, 4.5) controlPoint2: CGPointMake(26.47, 4.5)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(31.97, 7.5)];
    [bezierPath addLineToPoint: CGPointMake(16.03, 7.5)];
    [bezierPath addCurveToPoint: CGPointMake(15.13, 7.57) controlPoint1: CGPointMake(15.59, 7.5) controlPoint2: CGPointMake(15.37, 7.5)];
    [bezierPath addCurveToPoint: CGPointMake(14.57, 8.13) controlPoint1: CGPointMake(14.87, 7.67) controlPoint2: CGPointMake(14.67, 7.87)];
    [bezierPath addCurveToPoint: CGPointMake(14.5, 9.03) controlPoint1: CGPointMake(14.5, 8.37) controlPoint2: CGPointMake(14.5, 8.59)];
    [bezierPath addLineToPoint: CGPointMake(14.5, 36.97)];
    [bezierPath addCurveToPoint: CGPointMake(14.57, 37.87) controlPoint1: CGPointMake(14.5, 37.41) controlPoint2: CGPointMake(14.5, 37.63)];
    [bezierPath addCurveToPoint: CGPointMake(15.13, 38.43) controlPoint1: CGPointMake(14.67, 38.13) controlPoint2: CGPointMake(14.87, 38.33)];
    [bezierPath addCurveToPoint: CGPointMake(16.03, 38.5) controlPoint1: CGPointMake(15.37, 38.5) controlPoint2: CGPointMake(15.59, 38.5)];
    [bezierPath addLineToPoint: CGPointMake(31.97, 38.5)];
    [bezierPath addCurveToPoint: CGPointMake(32.87, 38.43) controlPoint1: CGPointMake(32.41, 38.5) controlPoint2: CGPointMake(32.63, 38.5)];
    [bezierPath addCurveToPoint: CGPointMake(33.43, 37.87) controlPoint1: CGPointMake(33.13, 38.33) controlPoint2: CGPointMake(33.33, 38.13)];
    [bezierPath addCurveToPoint: CGPointMake(33.5, 36.97) controlPoint1: CGPointMake(33.5, 37.63) controlPoint2: CGPointMake(33.5, 37.41)];
    [bezierPath addLineToPoint: CGPointMake(33.5, 9.03)];
    [bezierPath addCurveToPoint: CGPointMake(33.43, 8.13) controlPoint1: CGPointMake(33.5, 8.59) controlPoint2: CGPointMake(33.5, 8.37)];
    [bezierPath addCurveToPoint: CGPointMake(32.87, 7.57) controlPoint1: CGPointMake(33.33, 7.87) controlPoint2: CGPointMake(33.13, 7.67)];
    [bezierPath addCurveToPoint: CGPointMake(31.97, 7.5) controlPoint1: CGPointMake(32.63, 7.5) controlPoint2: CGPointMake(32.41, 7.5)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(24, 40.5)];
    [bezierPath addCurveToPoint: CGPointMake(22, 42.5) controlPoint1: CGPointMake(22.9, 40.5) controlPoint2: CGPointMake(22, 41.4)];
    [bezierPath addCurveToPoint: CGPointMake(24, 44.5) controlPoint1: CGPointMake(22, 43.6) controlPoint2: CGPointMake(22.9, 44.5)];
    [bezierPath addCurveToPoint: CGPointMake(26, 42.5) controlPoint1: CGPointMake(25.1, 44.5) controlPoint2: CGPointMake(26, 43.6)];
    [bezierPath addCurveToPoint: CGPointMake(24, 40.5) controlPoint1: CGPointMake(26, 41.4) controlPoint2: CGPointMake(25.1, 40.5)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(31.48, 1.89)];
    [bezierPath addLineToPoint: CGPointMake(31.71, 1.95)];
    [bezierPath addCurveToPoint: CGPointMake(35.05, 5.29) controlPoint1: CGPointMake(33.26, 2.51) controlPoint2: CGPointMake(34.49, 3.74)];
    [bezierPath addCurveToPoint: CGPointMake(35.5, 10.67) controlPoint1: CGPointMake(35.5, 6.71) controlPoint2: CGPointMake(35.5, 8.03)];
    [bezierPath addLineToPoint: CGPointMake(35.5, 37.33)];
    [bezierPath addCurveToPoint: CGPointMake(35.11, 42.48) controlPoint1: CGPointMake(35.5, 39.97) controlPoint2: CGPointMake(35.5, 41.29)];
    [bezierPath addLineToPoint: CGPointMake(35.05, 42.71)];
    [bezierPath addCurveToPoint: CGPointMake(31.71, 46.05) controlPoint1: CGPointMake(34.49, 44.26) controlPoint2: CGPointMake(33.26, 45.49)];
    [bezierPath addCurveToPoint: CGPointMake(26.33, 46.5) controlPoint1: CGPointMake(30.29, 46.5) controlPoint2: CGPointMake(28.97, 46.5)];
    [bezierPath addLineToPoint: CGPointMake(21.67, 46.5)];
    [bezierPath addCurveToPoint: CGPointMake(16.52, 46.11) controlPoint1: CGPointMake(19.03, 46.5) controlPoint2: CGPointMake(17.71, 46.5)];
    [bezierPath addLineToPoint: CGPointMake(16.29, 46.05)];
    [bezierPath addCurveToPoint: CGPointMake(12.95, 42.71) controlPoint1: CGPointMake(14.74, 45.49) controlPoint2: CGPointMake(13.51, 44.26)];
    [bezierPath addCurveToPoint: CGPointMake(12.5, 37.33) controlPoint1: CGPointMake(12.5, 41.29) controlPoint2: CGPointMake(12.5, 39.97)];
    [bezierPath addLineToPoint: CGPointMake(12.5, 10.67)];
    [bezierPath addCurveToPoint: CGPointMake(12.76, 6) controlPoint1: CGPointMake(12.5, 8.38) controlPoint2: CGPointMake(12.5, 7.08)];
    [bezierPath addCurveToPoint: CGPointMake(12.89, 5.52) controlPoint1: CGPointMake(12.8, 5.84) controlPoint2: CGPointMake(12.84, 5.68)];
    [bezierPath addLineToPoint: CGPointMake(12.95, 5.29)];
    [bezierPath addCurveToPoint: CGPointMake(14.51, 3.01) controlPoint1: CGPointMake(13.27, 4.4) controlPoint2: CGPointMake(13.81, 3.62)];
    [bezierPath addCurveToPoint: CGPointMake(16.29, 1.95) controlPoint1: CGPointMake(15.02, 2.55) controlPoint2: CGPointMake(15.63, 2.19)];
    [bezierPath addCurveToPoint: CGPointMake(21.67, 1.5) controlPoint1: CGPointMake(17.71, 1.5) controlPoint2: CGPointMake(19.03, 1.5)];
    [bezierPath addLineToPoint: CGPointMake(26.33, 1.5)];
    [bezierPath addCurveToPoint: CGPointMake(31.48, 1.89) controlPoint1: CGPointMake(28.97, 1.5) controlPoint2: CGPointMake(30.29, 1.5)];
    [bezierPath closePath];
    [color setFill];
    [bezierPath fill];

}

+ (void)drawTimelapsesIcon
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    UIColor* color = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    
    //// Rectangle Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectanglePath fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 2 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -15 * M_PI / 180);
    
    UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle2Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 3 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -30 * M_PI / 180);
    
    UIBezierPath* rectangle3Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle3Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 4 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -45 * M_PI / 180);
    
    UIBezierPath* rectangle4Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle4Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 5 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -60 * M_PI / 180);
    
    UIBezierPath* rectangle5Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle5Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 6 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -75 * M_PI / 180);
    
    UIBezierPath* rectangle6Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle6Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 7 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -90 * M_PI / 180);
    
    UIBezierPath* rectangle7Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle7Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 8 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -105 * M_PI / 180);
    
    UIBezierPath* rectangle8Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle8Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 9 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -120 * M_PI / 180);
    
    UIBezierPath* rectangle9Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle9Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 10 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -135 * M_PI / 180);
    
    UIBezierPath* rectangle10Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle10Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 11 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -150 * M_PI / 180);
    
    UIBezierPath* rectangle11Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle11Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 12 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -165 * M_PI / 180);
    
    UIBezierPath* rectangle12Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle12Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 13 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -180 * M_PI / 180);
    
    UIBezierPath* rectangle13Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle13Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 14 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -195 * M_PI / 180);
    
    UIBezierPath* rectangle14Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle14Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 15 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -210 * M_PI / 180);
    
    UIBezierPath* rectangle15Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle15Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 16 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -225 * M_PI / 180);
    
    UIBezierPath* rectangle16Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle16Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 17 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -240 * M_PI / 180);
    
    UIBezierPath* rectangle17Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle17Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 18 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -255 * M_PI / 180);
    
    UIBezierPath* rectangle18Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle18Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 19 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -270 * M_PI / 180);
    
    UIBezierPath* rectangle19Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle19Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 20 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -285 * M_PI / 180);
    
    UIBezierPath* rectangle20Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle20Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 21 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -300 * M_PI / 180);
    
    UIBezierPath* rectangle21Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle21Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 22 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -315 * M_PI / 180);
    
    UIBezierPath* rectangle22Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle22Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 23 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -330 * M_PI / 180);
    
    UIBezierPath* rectangle23Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle23Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 24 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -345 * M_PI / 180);
    
    UIBezierPath* rectangle24Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1, -19, 2, 6)];
    [color setFill];
    [rectangle24Path fill];
    
    CGContextRestoreGState(context);
}

+ (void)drawHighFrameRateIcon
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    UIColor* color = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    
    //// Rectangle Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(-1.5, -19.5, 3, 8)];
    [color setFill];
    [rectanglePath fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 2 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -90 * M_PI / 180);
    
    UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1.5, -19.5, 3, 8)];
    [color setFill];
    [rectangle2Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 3 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -180 * M_PI / 180);
    
    UIBezierPath* rectangle3Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1.5, -19.5, 3, 8)];
    [color setFill];
    [rectangle3Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 4 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -270 * M_PI / 180);
    
    UIBezierPath* rectangle4Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1.5, -19.5, 3, 8)];
    [color setFill];
    [rectangle4Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 5 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -45 * M_PI / 180);
    
    UIBezierPath* rectangle5Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1.5, -19.5, 3, 11)];
    [color setFill];
    [rectangle5Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 6 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -135 * M_PI / 180);
    
    UIBezierPath* rectangle6Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1.5, -19.5, 3, 11)];
    [color setFill];
    [rectangle6Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 7 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -225 * M_PI / 180);
    
    UIBezierPath* rectangle7Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1.5, -19.5, 3, 11)];
    [color setFill];
    [rectangle7Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 8 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, 45 * M_PI / 180);
    
    UIBezierPath* rectangle8Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1.5, -19.5, 3, 11)];
    [color setFill];
    [rectangle8Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 9 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -22.5 * M_PI / 180);
    
    UIBezierPath* rectangle9Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1.5, -19.5, 3, 5)];
    [color setFill];
    [rectangle9Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 10 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -112.5 * M_PI / 180);
    
    UIBezierPath* rectangle10Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1.5, -19.5, 3, 5)];
    [color setFill];
    [rectangle10Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 11 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -202.5 * M_PI / 180);
    
    UIBezierPath* rectangle11Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1.5, -19.5, 3, 5)];
    [color setFill];
    [rectangle11Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 12 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, 67.5 * M_PI / 180);
    
    UIBezierPath* rectangle12Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1.5, -19.5, 3, 5)];
    [color setFill];
    [rectangle12Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 13 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -67.5 * M_PI / 180);
    
    UIBezierPath* rectangle13Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1.5, -19.5, 3, 5)];
    [color setFill];
    [rectangle13Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 14 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, -157.5 * M_PI / 180);
    
    UIBezierPath* rectangle14Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1.5, -19.5, 3, 5)];
    [color setFill];
    [rectangle14Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 15 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, 112.5 * M_PI / 180);
    
    UIBezierPath* rectangle15Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1.5, -19.5, 3, 5)];
    [color setFill];
    [rectangle15Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Rectangle 16 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 24, 24);
    CGContextRotateCTM(context, 22.5 * M_PI / 180);
    
    UIBezierPath* rectangle16Path = [UIBezierPath bezierPathWithRect: CGRectMake(-1.5, -19.5, 3, 5)];
    [color setFill];
    [rectangle16Path fill];
    
    CGContextRestoreGState(context);
}


#pragma mark - PHAsset Icons

+ (UIImage *)imageWithAssetMediaType:(PHAssetMediaType)mediaType subtype:(PHAssetMediaSubtype)mediaSubtype {
    UIImage *iconImage = nil;
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(48, 48), NO, 0.0f);
    switch (mediaType) {
        case PHAssetMediaTypeVideo: {
            if (mediaSubtype & PHAssetMediaSubtypeVideoStreamed) {
                [self drawSeriesIcon];
            } else if (mediaSubtype & PHAssetMediaSubtypeVideoHighFrameRate) {
                [self drawHighFrameRateIcon];
            } else if (mediaSubtype & PHAssetMediaSubtypeVideoTimelapse) {
                [self drawTimelapsesIcon];
            } else {
                [self drawVideoIcon];
            }
            iconImage = UIGraphicsGetImageFromCurrentImageContext();
            break;
        }
        case PHAssetMediaTypeImage: {
            if (mediaSubtype & PHAssetMediaSubtypePhotoPanorama) {
                [self drawPanoramaIcon];
                iconImage = UIGraphicsGetImageFromCurrentImageContext();
//            } else if (mediaSubtype & PHAssetMediaSubtypePhoto) {
//                [self drawPanoramaIcon];
            }
            break;
        }
        default:
            break;
    }
    UIGraphicsEndImageContext();
    return iconImage;
}

+ (UIImage *)imageWithAssetCollectionType:(PHAssetCollectionType)collectionType subtype:(PHAssetCollectionSubtype)collectionSubtype {
    UIImage *iconImage = nil;
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(48, 48), NO, 0.0f);
    switch (collectionSubtype) {
        case PHAssetCollectionSubtypeSmartAlbumVideos:
            [self drawVideoIcon];
            iconImage = UIGraphicsGetImageFromCurrentImageContext();
            break;
        case PHAssetCollectionSubtypeSmartAlbumPanoramas:
            [self drawPanoramaIcon];
            iconImage = UIGraphicsGetImageFromCurrentImageContext();
            break;
        case PHAssetCollectionSubtypeSmartAlbumFavorites:
            [self drawFavoriteIcon];
            iconImage = UIGraphicsGetImageFromCurrentImageContext();
            break;
        case PHAssetCollectionSubtypeSmartAlbumSlomoVideos:
            [self drawSlowIcon];
            iconImage = UIGraphicsGetImageFromCurrentImageContext();
            break;
        case PHAssetCollectionSubtypeSmartAlbumTimelapses:
            [self drawIntervalIcon];
            iconImage = UIGraphicsGetImageFromCurrentImageContext();
            break;
        case PHAssetCollectionSubtypeSmartAlbumSelfPortraits:
            [self drawSelfieIcon];
            iconImage = UIGraphicsGetImageFromCurrentImageContext();
            break;
        case PHAssetCollectionSubtypeSmartAlbumBursts:
            [self drawSeriesIcon];
            iconImage = UIGraphicsGetImageFromCurrentImageContext();
            break;
        case PHAssetCollectionSubtypeSmartAlbumScreenshots:
            [self drawScreenshotIcon];
            iconImage = UIGraphicsGetImageFromCurrentImageContext();
            break;
            
        default:
            break;
    }
    UIGraphicsEndImageContext();
    return iconImage;
}

#pragma mark -

+ (UIImage *)placeholderImageWithSize:(CGSize)size {    
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    UIColor *backgroundColor = [UIColor colorWithRed:(239.0 / 255.0) green:(239.0 / 255.0) blue:(244.0 / 255.0) alpha:1.0];
    UIColor *iconColor = [UIColor colorWithRed:(179.0 / 255.0) green:(179.0 / 255.0) blue:(182.0 / 255.0) alpha:1.0];
    
    // Background
    CGContextSetFillColorWithColor(context, [backgroundColor CGColor]);
    CGContextFillRect(context, CGRectMake(0, 0, size.width, size.height));
    
    // Icon (back)
    CGRect backIconRect = CGRectMake(size.width * (16.0 / 68.0),
                                     size.height * (20.0 / 68.0),
                                     size.width * (32.0 / 68.0),
                                     size.height * (24.0 / 68.0));
    
    CGContextSetFillColorWithColor(context, [iconColor CGColor]);
    CGContextFillRect(context, backIconRect);
    
    CGContextSetFillColorWithColor(context, [backgroundColor CGColor]);
    CGContextFillRect(context, CGRectInset(backIconRect, 1.0, 1.0));
    
    // Icon (front)
    CGRect frontIconRect = CGRectMake(size.width * (20.0 / 68.0),
                                      size.height * (24.0 / 68.0),
                                      size.width * (32.0 / 68.0),
                                      size.height * (24.0 / 68.0));
    
    CGContextSetFillColorWithColor(context, [backgroundColor CGColor]);
    CGContextFillRect(context, CGRectInset(frontIconRect, -1.0, -1.0));
    
    CGContextSetFillColorWithColor(context, [iconColor CGColor]);
    CGContextFillRect(context, frontIconRect);
    
    CGContextSetFillColorWithColor(context, [backgroundColor CGColor]);
    CGContextFillRect(context, CGRectInset(frontIconRect, 1.0, 1.0));
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}


@end
