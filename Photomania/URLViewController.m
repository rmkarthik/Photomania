//
//  URLViewController.m
//  Photomania
//
//  Created by Karthikeyan Ramanathan on 13/07/14.
//  Copyright (c) 2014 Karthik's App House. All rights reserved.
//

#import "URLViewController.h"

@interface URLViewController()
@property (weak, nonatomic) IBOutlet UITextView *urlTextView;

@end

@implementation URLViewController

- (void) setUrl:(NSURL *)url {
    _url = url;
    [self updateUI];
}

- (void) updateUI {
    self.urlTextView.text = [self.url absoluteString];
}

- (void) viewDidLoad {
    [super viewDidLoad];
    [self updateUI];
}

@end
