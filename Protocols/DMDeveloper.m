//
//  DMDeveloper.m
//  Protocols
//
//  Created by Denis Mordvinov on 13.12.16.
//  Copyright © 2016 Rosberry. All rights reserved.
//

#import "DMDeveloper.h"

@implementation DMDeveloper



-(void)work{
    
    
    
}


#pragma mark - DMPatient interface

-(BOOL)areYouOK{
    
    BOOL ok =arc4random() % 2;
    
    NSLog(@"Is developer %@ ok %@?", self.name, ok ? @"YES" : @"NO");
    
    return ok;
}

-(void)takePill{
    
    
    NSLog(@"Developer %@ takes a pill", self.name);
    
}
-(void)makeShot{
    
     NSLog(@"Developer %@ makes a shot", self.name);
}

-(NSString*)howIsYourJob{
    
    
    return @"My job is awesome!";
}

@end
