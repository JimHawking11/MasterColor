//
//  MCAPI.h
//  MasterColor
//
//  Created by Michael Salkin on 2/24/16.
//  Copyright © 2016 MAS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface MCAPI : NSObject

- (void)callWithParams:(nullable NSMutableDictionary *)parameters
              endpoint:(nonnull NSString *)endpoint
           withSuccess:(nullable void (^)(NSURLSessionDataTask * _Nonnull, id _Nullable))success
               failure:(nullable void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nonnull))failure;

@end
