//
//  DMStudent.h
//  Protocols
//
//  Created by Denis Mordvinov on 13.12.16.
//  Copyright © 2016 Rosberry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMPatient.h"

@interface DMStudent : NSObject <DMPatient>


@property (strong, nonatomic) NSString* universityName;
@property (strong, nonatomic) NSString* name;


-(void)study;

@end
