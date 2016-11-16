//
//  PaseCache.m
//  CacheDemo
//
//  Created by 曹燕兵 on 16/2/18.
//  Copyright © 2016年 曹燕兵. All rights reserved.
//

#import "YBCache.h"
#import <UIKit/UIKit.h>
#import "Login.h"

@interface YBCache ()
@property(nonatomic,copy)NSString *cacheDirectry;
@end
@implementation YBCache
+(id)cache
{
    static YBCache *cache = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        cache = [[YBCache alloc]init];
        //        cache.delegate = self;
        //在模拟器中模拟内存警告时，缓存不会做清理动作 为了确保接收到内存警告时能够真正释放内存，最好调用一下 removeAllObjects 方法
        [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidReceiveMemoryWarningNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
            [cache removeAllObjects];
        }];
        
    });
    return cache;
}
#pragma mark-------路径处理相关－－－－－－－－－－－
-(NSString *)cacheDirectry
{
    if (!_cacheDirectry) {
        NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
        _cacheDirectry = [NSString stringWithFormat:@"%@/Cache/%@", path, [Login lastLoginUser].global_key];
        if (![[NSFileManager defaultManager] fileExistsAtPath:_cacheDirectry]) {
            [[NSFileManager defaultManager] createDirectoryAtPath:_cacheDirectry withIntermediateDirectories:YES attributes:nil error:nil];
        } else {
            NSLog(@"FileDir is exists.");
        }
    }
    return _cacheDirectry;
}
//创建文件夹，返回拼接好的路径
-(NSString *)getFilePathWithLastPathName:(NSString *)lastPathName{
    
    return [[self cacheDirectry] stringByAppendingPathComponent:lastPathName];
}
#pragma mark------缓存写入相关－－－－－－－－－－－－－－
-(void)cacheToDisk:(NSString *)path data:(id<NSCoding>)data
{
    NSString *filePath = [self getFilePathWithLastPathName:path];
    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
    [dict setValue:[NSDate dateWithTimeIntervalSinceNow:0] forKey:@"time"];
    [dict setValue:data forKey:@"data"];
    [[self.class cache] setObject:dict forKey:filePath];
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    dispatch_async(queue, ^{
      
       BOOL b = [NSKeyedArchiver archiveRootObject:dict toFile:filePath];
        if (b) {
            NSLog(@"写入成功");
        }else{
            NSLog(@"写入失败");
        }
    });
}
-(void)cacheToMemoryWithdata:(id<NSCoding>)data ForKey:(NSString *)key{
    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
    [dict setValue:[NSDate dateWithTimeIntervalSinceNow:0] forKey:@"time"];
    [dict setValue:data forKey:@"data"];
    [[self.class cache] setObject:dict forKey:key];
}
#pragma mark-------缓存读取相关－－－－－－－－－－－－－－－
-(id)readWithDisk:(NSString *)path timeOut:(NSInteger)timeOut
{
    NSString *filePath = [self getFilePathWithLastPathName:path];
    NSDictionary *cacheData = [[self.class cache] objectForKey:filePath];
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:0];
    if (cacheData == nil) {
        cacheData = [NSMutableDictionary dictionaryWithContentsOfFile:filePath];
    }
    //第一次走的话磁盘还是为空，直接返回nil
    if (cacheData == nil) {
        return nil;
    }
    if ([date timeIntervalSinceDate:cacheData[@"time"]]>=timeOut) {
        return nil;
    }else{
        [[self.class cache] setObject:cacheData forKey:filePath];
        return cacheData[@"data"];
    }
    
}
-(id)readWithMemoryForKey:(NSString*)key timeOut:(NSInteger)timeOut{
    NSDictionary *cacheData = [[self.class cache] objectForKey:key];
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:0];
    if (cacheData) {
        if ([date timeIntervalSinceDate:cacheData[@"time"]]>=timeOut) {
            return nil;
        }else{
            return cacheData[@"data"];
        }
    }else{
        return nil;
    }
}
-(id)readWithDisk:(NSString *)path{
    NSString *filePath = [self getFilePathWithLastPathName:path];
    NSDictionary *cacheData = [[self.class cache] objectForKey:filePath];
    if (cacheData == nil) {
        cacheData = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];;
    }
    //第一次走的话磁盘还是为空，直接返回nil
    if (cacheData == nil) {
        return nil;
    }
    [[self.class cache] setObject:cacheData forKey:filePath];
    return cacheData[@"data"];
}
-(id)readWithMemoryForKey:(NSString*)key{
    NSDictionary *cacheData = [[self.class cache] objectForKey:key];
    if (cacheData) {
        return cacheData[@"data"];
    }else{
        return nil;
    }
}
#pragma mark----------计算缓存大小－－－－－－－－－－
-(NSInteger)getSizeOfYBCache{
    NSMutableData *data = [self dataInPath:[self cacheDirectry]];
    return data.length;
}
-(NSMutableData *)dataInPath:(NSString *)path
{
    NSMutableData *data = [NSMutableData data];
    NSError *error;
    NSArray *contents = [[NSFileManager defaultManager]contentsOfDirectoryAtPath:path error:&error];
    if (contents == nil) {
        [data appendData:[NSData dataWithContentsOfFile:path options:NSDataReadingUncached error:nil]];
        return data;
    }
    for (NSString *content in contents) {
        NSString *fullPath = [path stringByAppendingPathComponent:content];
        NSData *d = [self dataInPath:fullPath];
        if (d) {
            [data appendData:d];
        }
    }
    return data;
}
#pragma mark----------缓存清除相关－－－－－－－－－－
-(BOOL)deleteYBCache{
    [[self.class cache] removeAllObjects];
    return [[NSFileManager defaultManager] removeItemAtPath:[self cacheDirectry] error:nil];
}
-(BOOL)deletaYBCachePathName:(NSString *)lastPathName
{
    [[self.class cache] removeObjectForKey:[self getFilePathWithLastPathName:lastPathName]];
    NSString *cachePath = [self getFilePathWithLastPathName:lastPathName];
    return [[NSFileManager defaultManager] removeItemAtPath:cachePath error:nil];
}
@end
