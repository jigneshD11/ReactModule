
#import "ReactNativeModuleViewController.h"
#import <React/RCTRootView.h>
#import <React/RCTBridgeDelegate.h>
#import <React/RCTBridge.h>

@interface ReactNativeModuleViewController () <RCTBridgeDelegate>
@end

@implementation ReactNativeModuleViewController

- (void)loadView
{
    RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:@{}];
    self.view = [[RCTRootView alloc] initWithBridge:bridge
                                         moduleName:@"ReactModule"
                                  initialProperties:@{}];
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
    NSBundle *gitdawgBundle = [NSBundle bundleForClass:  ReactNativeModuleViewController.class];
    return [gitdawgBundle URLForResource:@"ReactModule" withExtension:@"js"];
}

@end
