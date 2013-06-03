//
//  VCImage.h
//  iOSUtils
//
//  Created by Vladimir Collak on 6/2/13.
//  Copyright (c) 2013 Vladimir Collak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VCImage : NSObject


+ (CALayer *) roundImageLayerWithShadow:(UIImage *)image
                        viewCenterPoint: (CGPoint) point;

@end
