//
//  PhotosByPhotographerCDTVC.m
//  Photomania
//
//  Created by Karthikeyan Ramanathan on 12/07/14.
//  Copyright (c) 2014 Karthik's App House. All rights reserved.
//

#import "PhotosByPhotographerCDTVC.h"

@implementation PhotosByPhotographerCDTVC

-(void)setPhotographer:(Photographer *)photographer {
    
    _photographer = photographer;
    
    self.title = photographer.name;
    
    [self setupFetchResultsController];
    
}

-(void) setupFetchResultsController {
    
    NSManagedObjectContext *context = self.photographer.managedObjectContext;
    
    if (context) {
        NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Photo"];
        request.predicate = [NSPredicate predicateWithFormat:@"whoTook = %@", self.photographer];
        request.sortDescriptors = @[[NSSortDescriptor
                                     sortDescriptorWithKey:@"title"
                                     ascending:YES
                                     selector:@selector(localizedStandardCompare:)]];
        
        self.fetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:request
                                                                            managedObjectContext:context
                                                                              sectionNameKeyPath:nil
                                                                                       cacheName:nil];
    } else {
        self.fetchedResultsController = nil;
    }
    
}

@end
