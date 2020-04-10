//
//  ZLPhotoModel.m
//  ZLPhotoBrowser
//
//  Created by long on 17/4/12.
//  Copyright © 2017年 long. All rights reserved.
//

#import "ZLPhotoModel.h"
#import "ZLPhotoManager.h"

@implementation ZLPhotoModel

+ (instancetype)modelWithAsset:(PHAsset *)asset type:(ZLAssetMediaType)type duration:(NSString *)duration
{
    ZLPhotoModel *model = [[ZLPhotoModel alloc] init];
    model.asset = asset;
    model.type = type;
    model.duration = duration;
    model.selected = NO;
    model.fileSize = [ZLPhotoModel getAssetFileSize:asset];
    return model;
}

+ (long long)getAssetFileSize:(PHAsset *)asset
{
    PHAssetResource *resource = [[PHAssetResource assetResourcesForAsset:asset] firstObject];

    long long size = [[resource valueForKey:@"fileSize"] longLongValue];
    
    return size;
}

@end

@implementation ZLAlbumListModel


@end
