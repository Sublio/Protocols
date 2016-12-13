//
//  DMDeveloper.h
//  Protocols
//
//  Created by Denis Mordvinov on 13.12.16.
//  Copyright © 2016 Rosberry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import "DMPatient.h"


@interface DMDeveloper : NSObject<DMPatient>


@property(assign, nonatomic) CGFloat experience;
@property (strong, nonatomic) NSString* name;

-(void)work;

@end
