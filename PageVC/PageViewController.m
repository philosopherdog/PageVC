//
//  PageViewController.m
//  PageVC
//
//  Created by steve on 2016-07-15.
//  Copyright © 2016 steve. All rights reserved.
//

#import "PageViewController.h"
#import "Photo.h"
#import "ViewController.h"

@interface PageViewController ()<UIPageViewControllerDataSource>
@property (nonatomic, copy)NSArray <Photo*>* photos;
@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createData];
    self.dataSource = self;
    ViewController *vc = [self createViewControllerWithIndex:0];
    [self setViewControllers:@[vc] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
}

- (ViewController *)createViewControllerWithIndex:(NSInteger)index {
    ViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    vc.index = index;
    vc.photo = self.photos[index];
    return vc;
}

- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    NSInteger index = ((ViewController *)viewController).index;
    if (index <= 0) {
        return nil;
    }
    index -= 1;
    ViewController *vc = [self createViewControllerWithIndex:index];
    return vc;
}

- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    NSInteger index = ((ViewController *)viewController).index;
    if (index >= self.photos.count-1) {
        return nil;
    }
    index += 1;
    ViewController *vc = [self createViewControllerWithIndex:index];
    return vc;
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    return self.photos.count;
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    NSInteger index = ((ViewController *)pageViewController.viewControllers[0]).index;
    return index;
}

#pragma mark - Data
- (void)createData {
    NSMutableArray *temp = [NSMutableArray array];
    
    for (NSInteger i = 1; i < 11; ++i) {
        NSString *name = @(i).stringValue;
        Photo *photo = [[Photo alloc] initWithImageName:name];
        [temp addObject:photo];
    }
    self.photos = temp;
}

@end
