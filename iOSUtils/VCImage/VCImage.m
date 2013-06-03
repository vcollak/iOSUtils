//
//  VCImage.m
//  iOSUtils
//
//  Created by Vladimir Collak on 6/2/13.
//  Copyright (c) 2013 Vladimir Collak. All rights reserved.
//
//
//
//  Based on TJViewController created by Travis Jeffery on 2012-08-06.
//  Copyright (c) 2012 Travis Jeffery. All rights reserved.
//
//------------------------------------------------------------------------



#import "VCImage.h"
#import <QuartzCore/QuartzCore.h>

@implementation VCImage


/*
 
 Provide and image and the a point where to add it to a view and the
method will return a CALayer that will round the image (circle) amd 
add a shadow. 
 
 
 Example code added to a ViewController:
 
 //get an image
 UIImage* image = [UIImage imageNamed:@"profile_pic.jpg"];
 
 //call the roundImageLayerWithShadow: method
 CALayer *layer = [VCImage roundImageLayerWithShadow:image viewCenterPoint:self.view.center];

 //add the rounded image to teh view
 [self.view.layer addSublayer:layer];
 
 
 Make sure you import QuartzCore/QuartzCore.h in the view controller and also add 
 the QuartzCore library to your project.
 
 
*/
+ (CALayer *) roundImageLayerWithShadow:(UIImage *)image
                        viewCenterPoint: (CGPoint) point;

{
    
    
    // the image we're going to mask and shadow
    UIImageView* img = [[UIImageView alloc] initWithImage:image];
    img.center = point;
    
    
    // make new layer to contain shadow and masked image
    CALayer* containerLayer = [CALayer layer];
    containerLayer.shadowColor = [UIColor blackColor].CGColor;
    containerLayer.shadowRadius = 10.f;
    containerLayer.shadowOffset = CGSizeMake(0.f, 5.f);
    containerLayer.shadowOpacity = 1.f;
    
    // use the image's layer to mask the image into a circle
    img.layer.cornerRadius = roundf(img.frame.size.width/2.0);
    img.layer.masksToBounds = YES;
    
    // add masked image layer into container layer so that it's shadowed
    [containerLayer addSublayer:img.layer];
    
    // add container including masked image and shadow into view
    return containerLayer;
    
    
}


@end
