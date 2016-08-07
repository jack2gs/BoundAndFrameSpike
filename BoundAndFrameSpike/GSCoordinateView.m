//
//  GSCoordinateView.m
//  BoundAndFrameSpike
//
//  Created by Gao Song on 8/6/16.
//  Copyright © 2016 Gao Song. All rights reserved.
//

#import "GSCoordinateView.h"

@implementation GSCoordinateView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    // Drawing code
    NSDictionary *attributes=@{NSFontAttributeName:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]};
    NSAttributedString *originString=[[NSAttributedString alloc] initWithString:@"(0,0)" attributes:attributes];
   
    CGSize size=[originString size];
    CGRect originRect=CGRectMake(0, 0, size.width, size.height);
    [originString drawInRect:originRect];
}

@end
