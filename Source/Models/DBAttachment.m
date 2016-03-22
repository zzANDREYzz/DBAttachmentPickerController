//
//  DBAttachment.m
//  DBAttachmentPickerController
//
//  Created by Denis Bogatyrev on 14.03.16.
//
//  The MIT License (MIT)
//  Copyright (c) 2016 Denis Bogatyrev.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"),
//  to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
//  and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
//  IN THE SOFTWARE.
//

@import Photos;
@import CoreLocation;
#import "DBAttachment.h"

@interface DBAttachment ()

@property (strong, nonatomic) NSString *fileName;
@property (assign, nonatomic) NSUInteger fileSize;
@property (strong, nonatomic) NSDate *createDate;

@property (assign, nonatomic) DBAttachmentSourceType sourceType;
@property (assign, nonatomic) DBAttachmentMediaType mediaType;

@property (strong, nonatomic) PHAsset *photoAsset;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSURL *documentURL;

@end

@implementation DBAttachment

+ (instancetype)attachmentFromPHAsset:(PHAsset *)asset {
    DBAttachment *model = [[[self class] alloc] init];
    model.sourceType = DBAttachmentSourceTypePHAsset;
    model.photoAsset = asset;
    
    NSArray *resources = [PHAssetResource assetResourcesForAsset:asset];
    PHAssetResource *resource = [resources firstObject];
    switch (asset.mediaType) {
        case PHAssetMediaTypeImage:
            model.mediaType = DBAttachmentMediaTypeImage;
            break;
        case PHAssetMediaTypeVideo:
            model.mediaType = DBAttachmentMediaTypeVideo;
            break;
        default:
            model.mediaType = DBAttachmentMediaTypeOther;
            break;
    }
    model.fileName = resource.originalFilename;
    model.createDate = asset.creationDate;
    
//    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
//    [geocoder reverseGeocodeLocation:asset.location
//                   completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
//                       CLPlacemark *placemark = [placemarks firstObject];
//                       NSLog(@"%@", placemark.name);
//                   }];
    
    return model;
}

+ (instancetype)attachmentFromImage:(UIImage *)image {
    DBAttachment *model = [[[self class] alloc] init];
    model.sourceType = DBAttachmentSourceTypeImage;
    model.mediaType = DBAttachmentMediaTypeImage;
    model.image = image;
    return model;
}

+ (instancetype)attachmentFromDocumentURL:(NSURL *)url withMediaType:(DBAttachmentMediaType)mediaType {
    DBAttachment *model = [[[self class] alloc] init];
    model.sourceType = DBAttachmentSourceTypeDocumentURL;
    model.mediaType = mediaType;
    model.documentURL = url;
    return model;
}

#pragma mark -

- (void)loadThumbnailImageWithTargetSize:(CGSize)targetSize completion:(void(^)(UIImage *resultImage))completion {
    switch (self.sourceType) {
        case DBAttachmentSourceTypePHAsset:
            if (completion) {
                [[PHImageManager defaultManager] requestImageForAsset:self.photoAsset
                                                           targetSize:targetSize
                                                          contentMode:PHImageContentModeDefault
                                                              options:nil
                                                        resultHandler:^(UIImage *result, NSDictionary *info) {
                                                            if (![info[PHImageResultIsDegradedKey] boolValue]) {
                                                                completion(result);
                                                            }
                                                        }];
            }
            break;
        default:
            [self loadOriginalImageWithCompletion:completion];
            break;
    }
}

- (void)loadOriginalImageWithCompletion:(void(^)(UIImage *resultImage))completion {
    switch (self.sourceType) {
        case DBAttachmentSourceTypePHAsset:
            if (completion) {
                [[PHImageManager defaultManager] requestImageForAsset:self.photoAsset
                                                           targetSize:PHImageManagerMaximumSize
                                                          contentMode:PHImageContentModeDefault
                                                              options:nil
                                                        resultHandler:^(UIImage *result, NSDictionary *info) {
                                                            completion(result);
                                                        }];
            }
            break;
        case DBAttachmentSourceTypeImage: {
            if (completion) {
                completion(self.image);
            }
            break;
        }
        case DBAttachmentSourceTypeDocumentURL: {
            [self loadImageFromDocumentURL:self.documentURL mediaType:self.mediaType completion:completion];
            break;
        }
        default:
            if (completion) {
                completion(nil);
            }
            break;
    }
}

#pragma mark Helpers

- (void)loadImageFromDocumentURL:(NSURL *)url mediaType:(DBAttachmentMediaType)mediaType completion:(void(^)(UIImage *resultImage))completion {
    if (mediaType == DBAttachmentMediaTypeImage) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
            UIImage *image = nil;
            if (url) {
                NSData *imageData = [NSData dataWithContentsOfURL:url];
                image = [UIImage imageWithData:imageData];
            }
            dispatch_async(dispatch_get_main_queue(), ^{
                if (completion) {
                    completion(image);
                }
            });
        });
    } else if (mediaType == DBAttachmentMediaTypeVideo) {
        UIImage *image = [self generateThumbnailImageFromURL:url];
        if (completion) {
            completion(image);
        }
    } else {
        if (completion) {
            completion(nil);
        }
    }
}

- (UIImage *)generateThumbnailImageFromURL:(NSURL *)url {
    AVAsset *asset = [AVAsset assetWithURL:url];
    AVAssetImageGenerator *imageGenerator = [[AVAssetImageGenerator alloc] initWithAsset:asset];
    imageGenerator.appliesPreferredTrackTransform = YES;
    CMTime time = [asset duration];
    time.value = 0;
    CGImageRef imageRef = [imageGenerator copyCGImageAtTime:time actualTime:NULL error:NULL];
    UIImage *thumbnail = [UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    return thumbnail;
}

@end
