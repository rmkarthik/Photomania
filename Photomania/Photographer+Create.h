//
//  Photographer+Create.h
//  Photomania
//
//  Created by Karthikeyan Ramanathan on 28/06/14.
//  Copyright (c) 2014 Karthik's App House. All rights reserved.
//

#import "Photographer.h"

@interface Photographer (Create)
+ (Photographer *) photographerWithName:(NSString *) photoDictionary
         inManagedObjectContext:(NSManagedObjectContext *) context;
@end
