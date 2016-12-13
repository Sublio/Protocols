//
//  DMDancer.m
//  Protocols
//
//  Created by Denis Mordvinov on 13.12.16.
//  Copyright © 2016 Rosberry. All rights reserved.
//

#import "DMDancer.h"

@implementation DMDancer


-(void)dance{
    
    
    
}

#pragma mark - DMPatient interface

-(BOOL)areYouOK{
    
    BOOL ok =arc4random() % 2;
    
    NSLog(@"Is dancer %@ ok %@?", self.name, ok ? @"YES" : @"NO");
    
    return ok;
}

-(void)takePill{
    
    
    NSLog(@"Dancer %@ takes a pill", self.name);
    
}
-(void)makeShot{
    
    NSLog(@"Dancer %@ makes a shot", self.name);
}


@end
