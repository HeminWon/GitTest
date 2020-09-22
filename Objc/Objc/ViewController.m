//
//  ViewController.m
//  Objc
//
//  Created by Hemin Won on 2020/9/22.
//

#import "ViewController.h"
#import "PhoneTraceRoute.h"
#import <PhoneNetSDK/PhoneNetSDK.h>

@interface ViewController ()<PhoneTraceRouteDelegate>
@property (nonatomic, strong) PhoneTraceRoute *traceR;
@end

@implementation ViewController

- (void)tracerouteWithUCTraceRoute:(PhoneTraceRoute *)ucTraceRoute tracertResult:(PTracerRouteResModel *)tracertRes {
    
}

- (void)tracerouteFinishedWithUCTraceRoute:(PhoneTraceRoute *)ucTraceRoute {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor lightGrayColor];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

- (void)btnAction {
    [[PhoneNetManager shareInstance] netStartPing:@"a1-cn.wgine.com" packetCount:3 pingResultHandler:^(NSString * _Nullable pingres) {
        NSLog(@"ping: %@", pingres);
    }];
    
//    [[PhoneNetManager shareInstance] netStartTraceroute:@"a1-cn.wgine.com" tracerouteResultHandler:^(NSString * _Nullable tracertRes, NSString * _Nullable destIp) {
//        // your processing logic
//        NSLog(@"trace: %@ %@", tracertRes, destIp);
//    }];
    
    return;
//    if (self.traceR.isTracert) {
//        [self.traceR stopTracert];
//    } else {
//        [self.traceR startTracerouteHost:@"a1-cn.wgine.com"];
//    }
}

#pragma mark -
//- (PhoneTraceRoute *)traceR {
//    if (!_traceR) {
//        _traceR = [[PhoneTraceRoute alloc] init];
//        _traceR.delegate = self;
//    }
//    return _traceR;
//}
@end
