//
//  ViewController.m
//  AppIconDemo
//
//  Created by HTC on 2021/12/23.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *icons;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.icons enumerateObjectsUsingBlock:^(UIImageView * _Nonnull imageView, NSUInteger idx, BOOL * _Nonnull stop) {

        UIGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
        [imageView addGestureRecognizer:tapGestureRecognizer];
    }];
}


- (void)imageTapped:(UITapGestureRecognizer *)tapGestureRecognizer {
    
    UIView *tappedImage = tapGestureRecognizer.view;
    switch (tappedImage.tag) {
        case 1:
            [[UIApplication sharedApplication] setAlternateIconName:nil completionHandler:nil];
            break;
        case 2:
            [[UIApplication sharedApplication] setAlternateIconName:@"37" completionHandler:nil];
            break;
        case 3:
            [[UIApplication sharedApplication] setAlternateIconName:@"Rainbow" completionHandler:nil];
            break;
        case 4:
            [[UIApplication sharedApplication] setAlternateIconName:@"Apple" completionHandler:nil];
            break;
        case 5:
            [[UIApplication sharedApplication] setAlternateIconName:@"Oversea" completionHandler:nil];
            break;
        case 6:
            [[UIApplication sharedApplication] setAlternateIconName:@"Demo" completionHandler:nil];
            break;
            
        default:
            break;
    }
}


@end
