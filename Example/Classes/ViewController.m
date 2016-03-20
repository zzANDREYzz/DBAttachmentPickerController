//
//  ViewController.m
//  DBAttachmentPickerControllerExample
//
//  Created by Denis Bogatyrev on 18.03.16.
//  Copyright © 2016 Denis Bogatyrev. All rights reserved.
//

#import "ViewController.h"
#import "DBAttachmentPickerController.h"
#import "DBAttachment.h"

static NSString *const kAttachmentCellIdentifier = @"AttachmentCellID";

@interface AttachmentCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *thumbnailImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *sizeLabel;

@end

@implementation AttachmentCell

@end

@interface ViewController () <DBAttachmentPickerControllerDelegate>

@property (strong, nonatomic) NSMutableArray *attachmentArray;
@property (strong, nonatomic) DBAttachmentPickerController *pickerController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.attachmentArray = [[NSMutableArray alloc] initWithCapacity:100];
}

#pragma mark -

- (IBAction)addAttachmentButtonDidSelect:(UIBarButtonItem *)sender {
    self.pickerController = [[DBAttachmentPickerController alloc] initWithMediaType:DBAttachmentPickerControllerMediaTypeImage];
    self.pickerController.delegate = self;
    [self.pickerController presentAttachmentPickerOnViewController:self];
}

#pragma mark - DBAttachmentPickerController Delegate

- (void)DBAttachmentPickerController:(DBAttachmentPickerController *)controller didFinishPickingAttachmentArray:(NSArray<DBAttachment *> *)attachmentArray {
    NSMutableArray *indexPathArray = [NSMutableArray arrayWithCapacity:attachmentArray.count];
    NSUInteger currentIndex = self.attachmentArray.count;
    for (NSUInteger i = 0; i < attachmentArray.count; i++) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:currentIndex+i inSection:0];
        [indexPathArray addObject:indexPath];
    }
    [self.attachmentArray addObjectsFromArray:attachmentArray];
    [self.tableView insertRowsAtIndexPaths:indexPathArray withRowAnimation:UITableViewRowAnimationAutomatic];
    self.pickerController = nil;

}

- (void)DBAttachmentPickerControllerDidCancel:(DBAttachmentPickerController *)controller {
    self.pickerController = nil;
}

#pragma mark - UITableView DataSource && Delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.attachmentArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AttachmentCell *cell = [tableView dequeueReusableCellWithIdentifier:kAttachmentCellIdentifier];
    if (cell == nil) {
        cell = [[AttachmentCell alloc] init];
    }
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}

- (void)configureCell:(AttachmentCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    DBAttachment *attachment = self.attachmentArray[indexPath.row];
    
    cell.titleLabel.text = @"unknown file name";
    cell.dateLabel.text = @"unknown date";
    cell.sizeLabel.text = @"0.00 Mb";
    
    CGFloat scale = [UIScreen mainScreen].scale;
    CGSize scaledThumbnailSize = CGSizeMake( 80.f * scale, 80.f * scale );
    
    [attachment loadThumbnailImageWithTargetSize:scaledThumbnailSize completion:^(UIImage *resultImage) {
        cell.thumbnailImageView.image = resultImage;
    }];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
