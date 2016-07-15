//
//  ViewController.m
//  PageVC
//
//  Created by steve on 2016-07-15.
//  Copyright © 2016 steve. All rights reserved.
//

#import "ViewController.h"
#import "Photo.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView.image = self.photo.photo;
}

@end
