//
//  TetraSliderCell.h
//  TetraKit
//
//  Created by Sadik Saidov (www.iconshots.com)
//  All code is provided under the New BSD license.
//

#import "ZYVolumeSliderCell.h"

@implementation ZYVolumeSliderCell

-(id)initWithCoder:(NSCoder *)coder{
    self = [super initWithCoder:coder];
    if (self) {
        self.knob = [NSImage imageNamed:@"knob"];
        self.knobHighlited = [NSImage imageNamed:@"knob"];
    }
    return self;
}

- (void)drawKnob:(NSRect)knobRect
{
//    //// Color Declarations
//    NSColor* color19 = [NSColor colorWithCalibratedRed: 0 green: 0 blue: 0 alpha: 0.172];
//    NSColor* color20 = [NSColor colorWithCalibratedRed: 1 green: 1 blue: 1 alpha: 0.759];
//    NSColor* color18 = [NSColor colorWithCalibratedRed: 0.4 green: 0.451 blue: 0.581 alpha: 1];
//    NSColor* color16 = [NSColor colorWithCalibratedRed: 0 green: 0 blue: 0 alpha: 0.2];
//    
//    //// Gradient Declarations
//    NSGradient* linearGradient3 = [[NSGradient alloc] initWithStartingColor: color20 endingColor: color18];
//    
//    //// Frames
//    NSRect sliderFrame = knobRect;
//    
//    //// Subframes
//    NSRect track = NSMakeRect(NSMinX(sliderFrame)+ 0.5 , NSMinY(sliderFrame) + floor((NSHeight(sliderFrame) - 12) * 0.50000 + 0.5), floor(NSWidth(sliderFrame) )-0.7, 12);
//    
//    NSRect trackFrame = NSMakeRect(NSMinX(track) , NSMinY(track) + NSHeight(track) - 9, floor(NSWidth(track) * 1.00000 + 0.5) - floor(NSWidth(track) * 0.00000 + 0.5), 6);
//    
//    NSRect urta = NSMakeRect(NSMinX(trackFrame) + floor((NSWidth(trackFrame) - 12) * 0.50333 + 0.5), NSMinY(trackFrame) - 3, 12, 12);
//    
//    
//    //// Track
//    {
//        //// urta
//        {
//            //// Oval 4 Drawing
//            NSRect oval4Rect = NSMakeRect(NSMinX(urta) + 0.5, NSMinY(urta) + floor(NSHeight(urta) * 0.04167) + 0.5, 11, floor(NSHeight(urta) * 0.95833) - floor(NSHeight(urta) * 0.04167));
//            NSBezierPath* oval4Path = [NSBezierPath bezierPathWithOvalInRect: oval4Rect];
//            [NSGraphicsContext saveGraphicsState];
//            [oval4Path addClip];
//            [linearGradient3 drawFromPoint: NSMakePoint(NSMidX(oval4Rect) + 0 * NSWidth(oval4Rect) / 11, NSMidY(oval4Rect) + -5.73 * NSHeight(oval4Rect) / 11)
//                                   toPoint: NSMakePoint(NSMidX(oval4Rect) + 0 * NSWidth(oval4Rect) / 11, NSMidY(oval4Rect) + 5.73 * NSHeight(oval4Rect) / 11)
//                                   options: NSGradientDrawsBeforeStartingLocation | NSGradientDrawsAfterEndingLocation];
//            [NSGraphicsContext restoreGraphicsState];
//            [color19 setStroke];
//            [oval4Path setLineWidth: 1];
//            [oval4Path stroke];
//            
//            
//            //// Oval 5 Drawing
//            NSBezierPath* oval5Path = [NSBezierPath bezierPathWithOvalInRect: NSMakeRect(NSMinX(urta) + 4.5, NSMinY(urta) + floor(NSHeight(urta) * 0.37500) + 0.5, 3, floor(NSHeight(urta) * 0.62500) - floor(NSHeight(urta) * 0.37500))];
//            [color16 setFill];
//            [oval5Path fill];
//            [color19 setStroke];
//            [oval5Path setLineWidth: 1];
//            [oval5Path stroke];
//        }
//    }
    
    [self drawKnob:knobRect knobImage: isPressed ? self.knobHighlited : self.knob];

}

- (void)drawBarInside:(NSRect)rect flipped:(BOOL)flipped
{
    //// General Declarations
    CGContextRef context = [[NSGraphicsContext currentContext] graphicsPort];
    
    //// Color Declarations
    NSColor* strokecolor = [NSColor colorWithCalibratedRed: 0 green: 0 blue: 0 alpha: 0.115];
    NSColor* shadow3Color = [NSColor colorWithCalibratedRed: 0.324 green: 55.324 blue: 2.324 alpha: 0.4];
    NSColor* shadowColor2 = [NSColor colorWithCalibratedRed: 0 green: 0 blue: 0 alpha: 0.376];
    NSColor* color32 = [NSColor colorWithCalibratedRed: 0.154 green: 0.154 blue: 0.154 alpha: 0.4];
    NSColor* color34 = [NSColor colorWithCalibratedRed: 0.175 green: 0.175 blue: 0.175 alpha: 0.4];
    NSColor* linearGradient8Color = [NSColor colorWithCalibratedRed: 0.101 green: 0.1 blue: 0.1 alpha: 1];
    
    NSColor* linearGradient9Color = [NSColor colorWithCalibratedRed: 0.101 green: 0.1 blue: 0.1 alpha: 1];
    
    NSColor* color344 = [NSColor colorWithCalibratedRed: 2.154 green: 2.154 blue: 2.154 alpha: 0.4];
    //// Gradient Declarations
    NSGradient* linearGradient8 = [[NSGradient alloc] initWithColorsAndLocations:
                                   linearGradient8Color, 0.0,
                                   color32, 0.50,
                                   color34, 1.0, nil];
    //// Gradient Declarations
//    NSGradient* linearGradient9 = [[NSGradient alloc] initWithColorsAndLocations:
//                                   linearGradient9Color, 0.0,
//                                   color344, 0.50,
//                                   color344, 1.0, nil];
    //// Shadow Declarations
    //    NSShadow* shadow3 = [[NSShadow alloc] init];
    //    [shadow3 setShadowColor: shadow3Color];
    //    [shadow3 setShadowOffset: NSMakeSize(0.1, -1.1)];
    //    [shadow3 setShadowBlurRadius: 5.5];
    NSShadow* shadow = [[NSShadow alloc] init];
    [shadow setShadowColor: shadowColor2];
    [shadow setShadowOffset: NSMakeSize(0.1, 0.1)];
    [shadow setShadowBlurRadius: 5.5];
    NSShadow* shadow3 = [[NSShadow alloc] init];
    [shadow3 setShadowColor: color344];
    [shadow3 setShadowOffset: NSMakeSize(0.1, 0.1)];
    [shadow3 setShadowBlurRadius: 5.5];
    //// Frames
    NSRect sliderFrame = rect;
    
    //// Subframes
    NSRect track = NSMakeRect(NSMinX(sliderFrame) + floor(NSWidth(sliderFrame) * 0.00000 + 0.5), NSMinY(sliderFrame) + floor((NSHeight(sliderFrame) - 12) * 0.50000 + 0.5), floor(NSWidth(sliderFrame) * 1.00000 + 0.5) - floor(NSWidth(sliderFrame) * 0.00000 + 0.5), 12);
    NSRect trackFrame = NSMakeRect(NSMinX(track) + floor(NSWidth(track) * 0.00000 + 0.5), NSMinY(track) + NSHeight(track) - 9, floor(NSWidth(track) * 1.00000 + 0.5) - floor(NSWidth(track) * 0.00000 + 0.5), 6);
    NSRect trackk = NSMakeRect(NSMinX(trackFrame) + 1.5, NSMinY(trackFrame), NSWidth(trackFrame) - 2, 6);
    
    
    //// Track
    {
        //// trackk
        {
            //// Rounded Rectangle Drawing
            NSBezierPath* roundedRectanglePath = [NSBezierPath bezierPathWithRoundedRect: NSMakeRect(NSMinX(trackk) + floor(NSWidth(trackk) * 0.00000 + 0.5), NSMinY(trackk) + floor(NSHeight(trackk) * 0.00000 + 0.5), floor(NSWidth(trackk) * 1.00000 + 0.5) - floor(NSWidth(trackk) * 0.00000 + 0.5), floor(NSHeight(trackk) * 1.00000 + 0.5) - floor(NSHeight(trackk) * 0.00000 + 0.5)) xRadius: 2.5 yRadius: 2.5];
            [NSGraphicsContext saveGraphicsState];
            //            [shadow3 set];
            CGContextBeginTransparencyLayer(context, NULL);
            [linearGradient8 drawInBezierPath: roundedRectanglePath angle: 90];
            CGContextEndTransparencyLayer(context);
            [NSGraphicsContext restoreGraphicsState];
            
            
            
            //// Rounded Rectangle 2 Drawing
            NSRect roundedRectangle2Rect = NSMakeRect(NSMinX(trackk) + floor(NSWidth(trackk) * 0.00000 + 0.5), NSMinY(trackk) + floor(NSHeight(trackk) * 0.00000 + 0.5), floor(NSWidth(trackk) * 1.00000 + 0.5) - floor(NSWidth(trackk) * 0.00000 + 0.5), floor(NSHeight(trackk) * 1.00000 + 0.5) - floor(NSHeight(trackk) * 0.00000 + 0.5));
            NSBezierPath* roundedRectangle2Path = [NSBezierPath bezierPathWithRoundedRect: roundedRectangle2Rect xRadius: 2.5 yRadius: 2.5];
            [NSGraphicsContext saveGraphicsState];
            [roundedRectangle2Path addClip];
            [linearGradient8 drawFromPoint: NSMakePoint(NSMidX(roundedRectangle2Rect) + 0 * NSWidth(roundedRectangle2Rect) / 70, NSMidY(roundedRectangle2Rect) + -2.5 * NSHeight(roundedRectangle2Rect) / 5)
                                   toPoint: NSMakePoint(NSMidX(roundedRectangle2Rect) + 0 * NSWidth(roundedRectangle2Rect) / 70, NSMidY(roundedRectangle2Rect) + 2.5 * NSHeight(roundedRectangle2Rect) / 5)
                                   options: NSGradientDrawsBeforeStartingLocation | NSGradientDrawsAfterEndingLocation];
            [NSGraphicsContext restoreGraphicsState];
            
            ////// Rounded Rectangle 2 Inner Shadow
            NSRect roundedRectangle2BorderRect = NSInsetRect([roundedRectangle2Path bounds], -shadow.shadowBlurRadius, -shadow.shadowBlurRadius);
            roundedRectangle2BorderRect = NSOffsetRect(roundedRectangle2BorderRect, -shadow.shadowOffset.width, shadow.shadowOffset.height);
            roundedRectangle2BorderRect = NSInsetRect(NSUnionRect(roundedRectangle2BorderRect, [roundedRectangle2Path bounds]), -1, -1);
            
            NSBezierPath* roundedRectangle2NegativePath = [NSBezierPath bezierPathWithRect: roundedRectangle2BorderRect];
            [roundedRectangle2NegativePath appendBezierPath: roundedRectangle2Path];
            [roundedRectangle2NegativePath setWindingRule: NSEvenOddWindingRule];
            
//            [NSGraphicsContext saveGraphicsState];
//            {
//                NSShadow* shadowWithOffset = [shadow copy];
//                CGFloat xOffset = shadowWithOffset.shadowOffset.width + round(roundedRectangle2BorderRect.size.width);
//                CGFloat yOffset = shadowWithOffset.shadowOffset.height;
//                shadowWithOffset.shadowOffset = NSMakeSize(xOffset + copysign(0.1, xOffset), yOffset + copysign(0.1, yOffset));
//                [shadowWithOffset set];
//                [[NSColor grayColor] setFill];
//                [roundedRectangle2Path addClip];
//                NSAffineTransform* transform = [NSAffineTransform transform];
//                [transform translateXBy: -round(roundedRectangle2BorderRect.size.width) yBy: 0];
//                [[transform transformBezierPath: roundedRectangle2NegativePath] fill];
//            }
//            [NSGraphicsContext restoreGraphicsState];
            
            [strokecolor setStroke];
            [roundedRectangle2Path setLineWidth: 1];
            [roundedRectangle2Path stroke];
            
            
        }
    }
    

}

- (NSRect)correctKnobRect:(NSRect)knobRect knobImage:(NSImage *)knobImage{
    
    CGFloat delta = (knobRect.size.width - knobImage.size.width) / 2.0f;
    
    knobRect.size.width = knobImage.size.width;
    knobRect.size.height = knobImage.size.height;
    knobRect.origin.y += delta;
    knobRect.origin.x += delta;
    
    return knobRect;
}

- (void)drawKnob:(NSRect)knobRect knobImage:(NSImage *)knobImage{
    knobRect = [self correctKnobRect:knobRect knobImage:knobImage];
    [knobImage drawInRect:knobRect];
}



@end
