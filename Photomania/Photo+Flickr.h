//
//  Photo+Flickr.h
//  Photomania
//
//  Created by Karthikeyan Ramanathan on 28/06/14.
//  Copyright (c) 2014 Karthik's App House. All rights reserved.
//

#import "Photo.h"

@interface Photo (Flickr)

+ (Photo *) photoWithFlickrInfo:(NSDictionary *) photoDictionary
         inManagedObjectContext:(NSManagedObjectContext *) context;

+ (void) loadPhotosFromFlickrArray:(NSArray *)photos
          intoManagedObjectContext:(NSManagedObjectContext *) context;
@end
