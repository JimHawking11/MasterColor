//
//  MCAPI.m
//  MasterColor
//
//  Created by Michael Salkin on 2/24/16.
//  Copyright © 2016 MAS. All rights reserved.
//

#import "MCAPI.h"

static NSString *const ColorLoverAPIBase = @"https://www.colourlovers.com/api/";

@implementation MCAPI

- (void)callWithParams:(nullable NSMutableDictionary *)parameters
              endpoint:(nonnull NSString *)endpoint
           withSuccess:(nullable void (^)(NSURLSessionDataTask * _Nonnull, id _Nullable))success
               failure:(nullable void (^)(NSURLSessionDataTask * _Nullable, NSError * _Nonnull))failure {
    
    //Add Format Type
    if (!parameters) {
        parameters = [@{} mutableCopy];
    }
    parameters[@"format"] = @"json";
    
    NSString *fullPath = [NSString stringWithFormat:@"%@%@", ColorLoverAPIBase, endpoint];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:fullPath parameters:parameters progress:nil success:success failure:failure];
}

@end
