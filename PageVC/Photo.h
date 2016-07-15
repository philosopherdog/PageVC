//
//  Photo.h
//  PageVC
//
//  Created by steve on 2016-07-15.
//  Copyright © 2016 steve. All rights reserved.
//

@import UIKit;

@interface Photo : NSObject
- (instancetype)initWithImageName:(NSString *)imageName;
@property (nonatomic) UIImage *photo;
@end
