#import "KakaoTalkExecute.h"

@implementation KakaoTalkExecute

- (void)execute:(CDVInvokedUrlCommand*)command {
    NSString* url = [command argumentAtIndex:0];
    
    NSURL *nsUrl = [NSURL URLWithString:url];
    if ([[UIApplication sharedApplication] canOpenURL:nsUrl]) {
        [[UIApplication sharedApplication] openURL:nsUrl options:@{} completionHandler:nil];
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    } else {
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Failed to open URL"];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
}

@end
