//
//  XAdBannerAd.h
//  AdWangMaiSDK
//
//  Created by 周泽浩 on 2023/2/27.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, AnimationTypes) {
    AnimationTransitionNone,
    AnimationTransitionFlipFromLeft,
    AnimationTransitionFlipFromRight,
    AnimationTransitionCurlUp,
    AnimationTransitionCurlDown,
};

NS_ASSUME_NONNULL_BEGIN
@protocol XAdBannerDelegate;

@interface XAdBannerAd : NSObject

/// 代理
@property (weak, nonatomic) id<XAdBannerDelegate>delegate;

/// 默认背景图  [可选]
@property (nonatomic, strong) UIImage *backgroundImage;

/// 广告更新动画类型  [可选] 默认无动画效果
@property (nonatomic,assign) AnimationTypes animationTypes;

/// 是否需要满足HTTPS  [可选] 默认为NO
@property (nonatomic,assign) BOOL secure;

/// 广告是否刷新  [可选] 默认为YES:刷新  设置为NO则不刷新
@property (nonatomic,assign) BOOL isRefresh;

// caid以及caid版本号信息
// 数组内部未字典对象,Key为caid和caidVer,对应的值均为字符串类型,示例:@{@"caid":@"",@"caidVer":@""} [可选]
@property (nonatomic, strong) NSArray *caidInfo;

/**
 构造方法
 
 @param adRect 广告视图尺寸
 @param adSlotId 广告位id
 @param parentView 父视图
 @param viewController 控制器
 @return 广告实例对象
 */
- (instancetype)initWithFrame:(CGRect)adRect adSlotId:(NSString *)adSlotId parentView:(UIView *)parentView viewController:(UIViewController *)viewController;

/// 加载广告数据
- (void)loadAdData;

/// 广告销毁
- (void)onDestroy;

/**
 返回广告的eCPM，单位：分
 
 @return 成功返回一个大于等于0的值，-1表示无权限或后台出现异常
 */
- (NSInteger)eCPM;
@end

NS_ASSUME_NONNULL_END
