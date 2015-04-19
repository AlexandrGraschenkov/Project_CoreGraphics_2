//
//  ViewController.m
//  TestCoreGraphicssdfsdgf
//
//  Created by Alexander on 16.04.15.
//  Copyright (c) 2015 Alexander. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{}
@property (nonatomic, weak) IBOutlet UIImageView *imgView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.imgView.image = [self drawImageAspectFitWithSize:CGSizeMake(100, 200)];
}

- (UIImage *)drawImageAspectFitWithSize:(CGSize)size {
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
    
    CGFloat diam = MIN(size.width, size.height);
    CGFloat x = (size.width - diam) / 2.0;
    CGFloat y = (size.height - diam) / 2.0;
    CGContextFillEllipseInRect(ctx, CGRectMake(x, y, diam, diam));
    
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    return img;
}

@end
