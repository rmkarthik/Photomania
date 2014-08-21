//
//  Photographer+Create.m
//  Photomania
//
//  Created by Karthikeyan Ramanathan on 28/06/14.
//  Copyright (c) 2014 Karthik's App House. All rights reserved.
//

#import "Photographer+Create.h"
#import "FlickrFetcher.h"

@implementation Photographer (Create)

+(Photographer *) photographerWithName:(NSString *)name inManagedObjectContext:(NSManagedObjectContext *)context {
    
    Photographer * photographer =nil;
    
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Photographer"];
    
    request.predicate = [NSPredicate predicateWithFormat:@"name = %@", name];
    
    NSError *error;
    NSArray *matches = [context executeFetchRequest:request error:&error];
    
    if( !matches || error || ([matches count]>1)) {
        //handle error
    } else if ([matches count]){
        photographer = [matches firstObject];
    } else {
        photographer = [NSEntityDescription insertNewObjectForEntityForName:@"Photographer" inManagedObjectContext:context];
        
        photographer.name = name ;
    }
    
    return photographer;

}

@end
