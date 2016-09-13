//
//  LSWFileManager.h
//  BaiSi
//
//  Created by 李善武 on 16/9/10.
//  Copyright © 2016年 李善武. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSWFileManager : NSObject
/**
 *  获取文件夹尺寸
 */
+ (NSInteger)getDirectorySize:(NSString *)directoryPath;

/**
 *  删除文件夹下所有文件
 */
+ (void)removeDirectoryPath:(NSString *)directoryPath;

@end
