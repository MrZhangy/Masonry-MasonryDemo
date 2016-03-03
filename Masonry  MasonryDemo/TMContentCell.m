//
//  TMContentCell.m
//  Masonry  MasonryDemo
//
//  Created by 张亚丰 on 16/3/2.
//  Copyright © 2016年 zhangyafeng. All rights reserved.
//

#import "TMContentCell.h"

@interface TMContentCell()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation TMContentCell

-(instancetype)init {
    if (self = [super init]) {
        self = [[NSBundle mainBundle] loadNibNamed:@"TMContentCell" owner:nil options:nil].firstObject;
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
    self.label.preferredMaxLayoutWidth = [UIScreen mainScreen].bounds.size.width - 16;
//    [self.label setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
