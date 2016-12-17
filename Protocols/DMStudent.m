//
//  DMStudent.m
//  Protocols
//
//  Created by Denis Mordvinov on 13.12.16.
//  Copyright © 2016 Rosberry. All rights reserved.
//

#import "DMStudent.h"

@implementation DMStudent


-(void)study{
    
    
    
}


#pragma mark - DMPatient interface

-(BOOL)areYouOK{
    
    BOOL ok =arc4random() % 2;
    
    NSLog(@"Is Student %@ ok %@?", self.name, ok ? @"YES" : @"NO");
    
    return ok;
}

-(void)takePill{
    
    
    NSLog(@"Student %@ takes a pill", self.name);
    
}
-(void)makeShot{
    
    NSLog(@"Student %@ makes a shot", self.name);
}


-(NSString*)howIsYourFamily{
    
    return @"My family is doing well";
}

@end
