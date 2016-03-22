//
//  DBAssetItemsViewController.m
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
#import "DBAssetItemsViewController.h"
#import "DBThumbnailPhotoCell.h"
#import "NSIndexSet+DB.h"

static const NSInteger kNumberItemsPerRow = 4;
static const CGFloat kDefaultItemOffset = 2.f;
static NSString *const kPhotoCellIdentifier = @"DBThumbnailPhotoCellID";

@interface DBAssetItemsViewController () <PHPhotoLibraryChangeObserver>

@property (strong, nonatomic) PHFetchResult *assetsFetchResults;
@property (strong, nonatomic) PHCachingImageManager *imageManager;

@end

@implementation DBAssetItemsViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Camera roll";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Attach" style:UIBarButtonItemStyleDone target:self action:@selector(attachButtonDidSelect:)];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
    flowLayout.sectionInset = UIEdgeInsetsMake(kDefaultItemOffset, kDefaultItemOffset, kDefaultItemOffset, kDefaultItemOffset);
    flowLayout.minimumLineSpacing = kDefaultItemOffset;
    flowLayout.minimumInteritemSpacing = kDefaultItemOffset;
    self.collectionView.collectionViewLayout = flowLayout;
    self.collectionView.allowsMultipleSelection = YES;
    
    self.imageManager = [[PHCachingImageManager alloc] init];
    [self.imageManager stopCachingImagesForAllAssets];
    
    [self.collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([DBThumbnailPhotoCell class]) bundle:nil] forCellWithReuseIdentifier:kPhotoCellIdentifier];
    
    [[PHPhotoLibrary sharedPhotoLibrary] registerChangeObserver:self];
}

- (void)dealloc {
    [[PHPhotoLibrary sharedPhotoLibrary] unregisterChangeObserver:self];
}

#pragma mark - Actions

- (void)attachButtonDidSelect:(UIBarButtonItem *)sender {
    if ([self.assetItemsDelegate respondsToSelector:@selector(DBAssetItemsViewController:didFinishPickingAssetArray:)]) {
        [self.assetItemsDelegate DBAssetItemsViewController:self didFinishPickingAssetArray:[self getSelectedAssetArray]];
    }
}

#pragma mark Helpers

- (NSArray *)getSelectedAssetArray {
    NSArray *selectedItems = [self.collectionView indexPathsForSelectedItems];
    NSMutableArray *assetArray = [NSMutableArray arrayWithCapacity:selectedItems.count];
    for (NSIndexPath *indexPath in selectedItems) {
        PHAsset *asset = self.assetsFetchResults[indexPath.item];
        [assetArray addObject:asset];
    }
    return [assetArray copy];
}

#pragma mark - Accessors

- (void)setAssetCollection:(PHAssetCollection *)assetCollection {
    _assetCollection = assetCollection;
    
    [self updateFetchRequest];
    [self.collectionView reloadData];
}

#pragma mark - Fetching Assets

- (void)updateFetchRequest {
    if (self.assetCollection) {
        PHFetchOptions *allPhotosOptions = [PHFetchOptions new];
        allPhotosOptions.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:NO]];
        if (self.assetMediaType == PHAssetMediaTypeVideo || self.assetMediaType == PHAssetMediaTypeImage) {
            allPhotosOptions.predicate = [NSPredicate predicateWithFormat:@"mediaType == %ld", self.assetMediaType];
        }
        
        self.assetsFetchResults = [PHAsset fetchAssetsInAssetCollection:self.assetCollection options:allPhotosOptions];
        [self.collectionView reloadData];
    } else {
        self.assetsFetchResults = nil;
    }
}

#pragma mark - PHPhotoLibraryChangeObserver

- (void)photoLibraryDidChange:(PHChange *)changeInstance {
    dispatch_async(dispatch_get_main_queue(), ^{
        PHFetchResultChangeDetails *collectionChanges = [changeInstance changeDetailsForFetchResult:self.assetsFetchResults];
        
        if (collectionChanges) {
            self.assetsFetchResults = [collectionChanges fetchResultAfterChanges];
            
            if (![collectionChanges hasIncrementalChanges] || [collectionChanges hasMoves]) {
                [self.collectionView reloadData];
            } else {
                [self.collectionView performBatchUpdates:^{
                    NSIndexSet *removedIndexes = [collectionChanges removedIndexes];
                    if ([removedIndexes count]) {
                        [self.collectionView deleteItemsAtIndexPaths:[removedIndexes indexPathsFromIndexesWithSection:0]];
                    }
                    
                    NSIndexSet *insertedIndexes = [collectionChanges insertedIndexes];
                    if ([insertedIndexes count]) {
                        [self.collectionView insertItemsAtIndexPaths:[insertedIndexes indexPathsFromIndexesWithSection:0]];
                    }
                    
                    NSIndexSet *changedIndexes = [collectionChanges changedIndexes];
                    if ([changedIndexes count]) {
                        [self.collectionView reloadItemsAtIndexPaths:[changedIndexes indexPathsFromIndexesWithSection:0]];
                    }
                } completion:nil];
            }
            [self.imageManager stopCachingImagesForAllAssets];
        }
    });
}

#pragma mark - UICollectionView DataSource && Delegate

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.assetsFetchResults.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    DBThumbnailPhotoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kPhotoCellIdentifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[DBThumbnailPhotoCell alloc] init];
    }
    [self configurePhotoCell:cell atIndexPath:indexPath];
    return cell;
}

- (void)configurePhotoCell:(DBThumbnailPhotoCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    PHAsset *asset = self.assetsFetchResults[indexPath.item];
    
    cell.tintColor = self.collectionView.tintColor;
    cell.identifier = asset.localIdentifier;
    cell.needsDisplayEmptySelectedIndicator = YES;
    
    CGFloat scale = [UIScreen mainScreen].scale;
    CGSize size = [self collectionItemCell];
    CGSize scaledThumbnailSize = CGSizeMake( size.width * scale, size.height * scale );
    
    [self.imageManager requestImageForAsset:asset
                                 targetSize:scaledThumbnailSize
                                contentMode:PHImageContentModeAspectFill
                                    options:nil
                              resultHandler:^(UIImage *result, NSDictionary *info) {
                                  if ([cell.identifier isEqualToString:asset.localIdentifier]) {
                                      cell.imageVeiw.image = result;
                                  }
                              }];
}

#pragma mark UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return [self collectionItemCell];
}

#pragma mark Helpers

- (CGSize)collectionItemCell {
    CGFloat itemWidth = floorf( ( CGRectGetWidth(self.collectionView.bounds) - kDefaultItemOffset * ( kNumberItemsPerRow + 1 ) ) / kNumberItemsPerRow);
    return CGSizeMake(itemWidth, itemWidth);
}

@end
