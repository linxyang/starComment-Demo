//
//  ViewController.m
//  starComment
//
//  Created by lxy on 16/3/5.
//  Copyright © 2016年 ylx. All rights reserved.
//

#import "ViewController.h"
#import "StarRatingView.h"

@interface ViewController ()<StarRatingViewDelegate>

/** 星星 */
@property (nonatomic, strong) StarRatingView *starView;

/** 显示分数的label */
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    StarRatingView *starView = [[StarRatingView alloc] initWithFrame:CGRectMake(50, 500, 200, 50)];
    starView.delegate = self;
    [self.view addSubview:starView];
    self.starView = starView;
}

#pragma mark - StarRatingViewDelegate代理方法
- (void)starRatingView:(StarRatingView *)view score:(float)score
{
    float scoreValue = score * 100;
    self.scoreLabel.text = [NSString stringWithFormat:@"分数是:%.f",scoreValue];

}

@end
