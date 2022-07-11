#import "Seon.h"
#import <SeonSDK/SeonFingerprint.h>

@implementation Seon

RCT_EXPORT_MODULE()

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

RCT_REMAP_METHOD(init, initWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [SeonFingerprint sharedManager];
    resolve(@YES);
}

RCT_REMAP_METHOD(sessionId, sessionId:(NSString*)sessionId sessionIdResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [[SeonFingerprint sharedManager] setSessionId:sessionId];
    resolve(@YES);
}

RCT_REMAP_METHOD(logging, enabled:(BOOL*)enabled loggingResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [[SeonFingerprint sharedManager] setLoggingEnabled:enabled];
    resolve(@YES);
}

RCT_REMAP_METHOD(fingerprint, fingerprintResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    NSString *fingerprint = [[SeonFingerprint sharedManager] fingerprintBase64];
    resolve(fingerprint);
}

@end
