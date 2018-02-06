//
//  UIImage+JGRenderImage.m
//  BuDeJie
//
//  Created by gjg on 2018/2/6.
//  Copyright © 2018年 gjg. All rights reserved.
//

#import "UIImage+JGRenderImage.h"

@implementation UIImage (JGRenderImage)
+ (UIImage *)returnOriginalImage:(NSString *)imagename
{
    UIImage *image = [UIImage imageNamed:imagename];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
}
@end
