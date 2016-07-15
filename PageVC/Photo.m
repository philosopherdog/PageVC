//
//  Photo.m
//  PageVC
//
//  Created by steve on 2016-07-15.
//  Copyright © 2016 steve. All rights reserved.
//

#import "Photo.h"

@implementation Photo
- (instancetype)initWithImageName:(NSString *)imageName {
    if (self = [super init]) {
        _photo = [UIImage imageNamed:imageName];
    }
    return self;
}
@end
