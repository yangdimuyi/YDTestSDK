//
//  XAdNativeAd.h
//  AdWangMaiSDK
//
//  Created by 周泽浩 on 2023/3/10.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol XAdNativeDelegete;

@interface XAdNativeAd : NSObject

/// 代理
@property (weak, nonatomic) id<XAdNativeDelegete>delegate;

/// 是否需要满足HTTPS  [可选] 默认为NO
@property (nonatomic,assign) BOOL secure;

/// 视频物料是否静音  [可选]  默认为NO
@property (nonatomic,assign) BOOL videoMuted;

/// 是否自动播放  [可选] 默认为YES
@property (nonatomic,assign) BOOL automaticallyPlay;

/// [必选]开发者需传入用来弹出目标页的ViewController
@property (nonatomic, weak) UIViewController *controller;

/// caid以及caid版本号信息
// 数组内部未字典对象,Key为caid和caidVer,对应的值均为字符串类型,示例:@{@"caid":@"",@"caidVer":@""} [可选]
@property (nonatomic, strong) NSArray *caidInfo;

/// 初始化广告
/// - Parameter adSlotId: 广告位ID
- (instancetype)initWithAdSlotId:(NSString *)adSlotId;

/**
 加载广告数据
 */
- (void)loadAdData;

/// 广告数据渲染完毕，即将展示时需调用trackImpression方法。
- (void)trackImpression;

/// 播放视频
- (void)play;

/// 暂停视频
- (void)pause;

/// 播放静音开关
/// @param flag 是否静音
- (void)muteEnable:(BOOL)flag;

@end

NS_ASSUME_NONNULL_END
