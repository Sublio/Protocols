//
//  AppDelegate.m
//  Protocols
//
//  Created by Denis Mordvinov on 13.12.16.
//  Copyright © 2016 Rosberry. All rights reserved.
//

#import "AppDelegate.h"
#import "DMPatient.h"
#import "DMStudent.h"
#import "DMDancer.h"
#import "DMDeveloper.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    
    DMDancer* dancer1 = [[DMDancer alloc]init];
    dancer1.name = @"Victor";
    DMDancer* dancer2 = [[DMDancer alloc]init];
    dancer2.name = @"Misha";
    
    DMStudent* student1 = [[DMStudent alloc]init];
    student1.name = @"Vasiliy";
    DMStudent* student2 = [[DMStudent alloc]init];
    student2.name = @"Alex";
    DMStudent* student3 = [[DMStudent alloc]init];
    student3.name = @"Mick";
    
    DMDeveloper* developer1 = [[DMDeveloper alloc]init];
    developer1.name = @"Takeshi";
    
    NSObject* fakeObject = [[NSObject alloc]init];
    
    
    NSArray *patients = [NSArray arrayWithObjects:fakeObject,dancer1,dancer2,student1,developer1,student2,student3,nil];
    
    
    for (id <DMPatient> patient in patients){
        
        
        if ([patient conformsToProtocol:@protocol(DMPatient)]){
        
        NSLog(@"Patient name = %@", patient.name);
        
        if ([patient respondsToSelector:@selector(howIsYourFamily)]){
            
            NSLog(@"How is your family? \n%@",[patient howIsYourFamily] );
            
        }
        
        if ([patient respondsToSelector:@selector(howIsYourJob)]){
            
            
            NSLog(@"How is your family? \n%@",[patient howIsYourJob] );
        }
        
        if (![patient areYouOK]){
            
            [patient takePill];
            
            if (![patient areYouOK]){
                
                [patient makeShot];
                }
            }
        
        }else {
            
            NSLog(@"Fake object detected");
        }
    }
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
