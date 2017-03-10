# OTStreamConnectionStatus
Just a simple category to manage OpenTok stream's connection status

## Installation
Copy 'OTStream+ConnectionStatus.h' and 'OTStream+ConnectionStatus.m' into your project

## Usage

Listen to OTStreamDelegate and OTSubscriberKitDelegate

//MARK: OTStreamDelegate
- (void)session:(nonnull OTSession*)session streamCreated:(nonnull OTStream*)stream {
	stream.isConnected = NO;
	...
}

- (void)subscriberDidConnectToStream:(OTSubscriberKit*)subscriber {
	subscriber.stream.isConnected = YES;
	...
}

//MARK: OTSubscriberKitDelegate
-(void)subscriberDidDisconnectFromStream:(OTSubscriberKit *)subscriber {
	subscriber.stream.isConnected = NO;
	...
}

-(void)subscriberDidReconnectToStream:(OTSubscriberKit *)subscriber {
	subscriber.stream.isConnected = YES;
	...
}

## Authors

Minh Nguyen, nvnminh0@gmail.com

## License

OTStreamConnectionStatus is available under the MIT license. See the LICENSE file for more info.
