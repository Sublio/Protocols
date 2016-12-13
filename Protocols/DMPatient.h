//
//  DMPatient.h
//  Protocols
//
//  Created by Denis Mordvinov on 13.12.16.
//  Copyright © 2016 Rosberry. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DMPatient


@property(strong, nonatomic) NSString* name;

-(BOOL)areYouOK;
-(void)takePill;
-(void)makeShot;



@end