//
//  Created by Minh Nguyen on 9/3/17.
//  Copyright © 2017 Minh Nguyen. All rights reserved.
//

#import "OTStream+ConnectionStatus.h"

#define KEY_TAG "OTStreamConnectionStatus"

@implementation OTStream (ConnectionStatus)
@dynamic isConnected;

-(void)setIsConnected:(BOOL)isConnected {
    objc_setAssociatedObject(self, KEY_TAG, [NSNumber numberWithBool:isConnected], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(BOOL)isConnected {
    NSNumber *number = objc_getAssociatedObject(self, KEY_TAG);
    if (number == nil) {
        return NO;
    } else {
        return [number boolValue];
    }
}

@end
