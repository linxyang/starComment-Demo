//
//  StarRatingView.h
//

#import <UIKit/UIKit.h>
@class StarRatingView;

@protocol StarRatingViewDelegate <NSObject>

@optional
-(void)starRatingView:(StarRatingView *)view score:(float)score;

@end

@interface StarRatingView : UIView 

- (id)initWithFrame:(CGRect)frame numberOfStar:(int)number;
@property (nonatomic, readonly) int numberOfStar;
@property (nonatomic, weak) id <StarRatingViewDelegate> delegate;
@property (nonatomic, strong) UIView *starBackgroundView;
@property (nonatomic, strong) UIView *starForegroundView;

@end
