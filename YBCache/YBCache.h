//
//  PaseCache.h
//  CacheDemo
//
//  Created by 曹燕兵 on 16/2/18.
//  Copyright © 2016年 曹燕兵. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YBCache : NSCache<NSCacheDelegate>
+(id)cache;
/**
 *  缓存至磁盘
 *
 *  @param path 磁盘路径,此处只需要传路径后缀名即可
 *  @param data 需要缓存的数据
 */
-(void)cacheToDisk:(NSString *)path data:(id<NSCoding>)data;
/**
 *  缓存至内存
 *
 *  @param data 需要缓存的数据
 *  @param key  存放缓存的标示，必须和读取缓存的标示保持一致
 */
-(void)cacheToMemoryWithdata:(id<NSCoding>)data ForKey:(NSString *)key;
/**
 *  从磁盘读取数据
 *
 *  @param path 磁盘路径，此处只需要传路径后缀名即可
 *
 *  @return 磁盘中缓存的数据
 */
-(id)readWithDisk:(NSString *)path;
/**
 *  从内存中读取数据
 *
 *  @param key 读取缓存的标示，必须和存放缓存时的标示保持一致
 *
 *  @return 内存中缓存的数据
 */
-(id)readWithMemoryForKey:(NSString*)key;
/**
 *  从磁盘中读取数据
 *
 *  @param path    缓存存放在磁盘中的路径，此处只需要传路径后缀名即可
 *  @param timeOut 缓存超期时间
 *
 *  @return 缓存的数据
 */
-(id)readWithDisk:(NSString *)path timeOut:(NSInteger)timeOut;
/**
 *  从内存中读取数据
 *
 *  @param key     读取缓存的标示，必须和存放缓存时的标示保持一致
 *  @param timeOut 缓存超期时间
 *
 *  @return 内存中缓存的数据
 */
-(id)readWithMemoryForKey:(NSString*)key timeOut:(NSInteger)timeOut;
/**
 *  获取当前在内存中的缓存大小
 *
 *  @return 缓存大小
 */
-(NSInteger)getSizeOfYBCache;
/**
 *  删除所有缓存
 *
 *  @return 是否删除成功
 */
-(BOOL)deleteYBCache;
/**
 *  删除指定路径下的缓存
 *
 *  @param lastPathName 路径后缀名
 *
 *  @return 是否删除成功
 */
-(BOOL)deletaYBCachePathName:(NSString *)lastPathName;
@end
