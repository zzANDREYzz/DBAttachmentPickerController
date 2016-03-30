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

#pragma mark - PHAsset Icons

+ (UIImage *)imageWithAssetMediaType:(PHAssetMediaType)mediaType subtype:(PHAssetMediaSubtype)mediaSubtype {
    UIImage *iconImage = nil;
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(48, 48), NO, 0.0f);
    switch (mediaType) {
        case PHAssetMediaTypeVideo: {
            if (mediaSubtype & PHAssetMediaSubtypeVideoStreamed) {
                [self drawSeriesIcon];
            } else if (mediaSubtype & PHAssetMediaSubtypeVideoHighFrameRate) {
                [self drawIntervalIcon];
            } else if (mediaSubtype & PHAssetMediaSubtypeVideoTimelapse) {
                [self drawSlowIcon];
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
        case PHAssetCollectionSubtypeSmartAlbumSelfPortraits:
            [self drawSelfieIcon];
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
