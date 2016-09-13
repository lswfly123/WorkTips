//
//  ViewController.m
//  SetupTest
//
//  Created by DQaemoney on 16/9/13.
//  Copyright © 2016年 developer@aemoney.com. All rights reserved.
//
/**
 *  文字排版的两种方式
 *  1.建立一个属性字典,用字典和字符串初始化NSMutableAttributedString对象,这个对象就有了属性字典中的属性
 *  2.先用字符串初始化一个NSMutableAttributedString类对象,然后单独给指定范围的文字指定属性
 *  @param -void
 *
 *  @return
 */

// NSFontAttributeName 设置字体属性，默认值：字体：Helvetica(Neue) 字号：12
// NSForegroundColorAttributeNam      设置字体颜色，取值为
// UIColor对象，默认值为黑色
// NSBackgroundColorAttributeName     设置字体所在区域背景颜色，取值为
// UIColor对象，默认值为nil, 透明色
// NSLigatureAttributeName            设置连体属性，取值为NSNumber 对象(整数)，0
// 表示没有连体字符，1 表示使用默认的连体字符
// NSKernAttributeName                设定字符间距，取值为 NSNumber
// 对象（整数），正值间距加宽，负值间距变窄
// NSStrikethroughStyleAttributeName  设置删除线，取值为 NSNumber 对象（整数）
// NSStrikethroughColorAttributeName  设置删除线颜色，取值为 UIColor
// 对象，默认值为黑色
// NSUnderlineStyleAttributeName      设置下划线，取值为 NSNumber
// 对象（整数），枚举常量 NSUnderlineStyle中的值，与删除线类似
// NSUnderlineColorAttributeName      设置下划线颜色，取值为 UIColor
// 对象，默认值为黑色
// NSStrokeWidthAttributeName         设置笔画宽度，取值为 NSNumber
// 对象（整数），负值填充效果，正值中空效果
// NSStrokeColorAttributeName         填充部分颜色，不是字体颜色，取值为 UIColor
// 对象
// NSShadowAttributeName              设置阴影属性，取值为 NSShadow 对象
// NSTextEffectAttributeName          设置文本特殊效果，取值为 NSString
// 对象，目前只有图版印刷效果可用：
// NSBaselineOffsetAttributeName      设置基线偏移值，取值为 NSNumber
// （float）,正值上偏，负值下偏
// NSObliquenessAttributeName         设置字形倾斜度，取值为 NSNumber
// （float）,正值右倾，负值左倾
// NSExpansionAttributeName           设置文本横向拉伸属性，取值为 NSNumber
// （float）,正值横向拉伸文本，负值横向压缩文本
// NSWritingDirectionAttributeName
// 设置文字书写方向，从左向右书写或者从右向左书写
// NSVerticalGlyphFormAttributeName   设置文字排版方向，取值为 NSNumber
// 对象(整数)，0 表示横排文本，1 表示竖排文本
// NSLinkAttributeName 设置链接属性，点击后调用浏览器打开指定URL地址
// NSAttachmentAttributeName
// 设置文本附件,取值为NSTextAttachment对象,常用于文字图片混排
// NSParagraphStyleAttributeName      设置文本段落排版格式，取值为
// NSParagraphStyle 对象
#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, assign) NSString *textStr;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.

  NSString *textStr = @"一、购卡\n  "
                      @"有两种方式：1.实体店购买；2."
                      @"线上购买。\n二、使用范围\n  "
                      @"适用于大钱包内储值卡发行商户的消费，使用时间参考店面营"
                      @"业时间。\n三、退卡\n  "
                      @"储值卡卡内金额在正常使用期间不可办理退款，如果因店铺经"
                      @"营不善导致的储值卡无法使用，经大钱审核通过后，按照购买"
                      @"时的优惠比例结算至用户的购买时使用的银行卡中 "
                      @"。另外，储值卡有效期截止后，也会将卡内余额按照比例退还"
                      @"至您的银行卡中。";
  self.textStr = textStr;
  [self test2];
}
- (void)test1 {

  // 1.建立一个字符串
  // 2.定义字符串的属性字典
  NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
  paragraph.lineSpacing = 10;
  NSDictionary *attributeDic = @{
    NSFontAttributeName : [UIFont systemFontOfSize:12],
    NSForegroundColorAttributeName : [UIColor blackColor],
    NSKernAttributeName : @10,
    NSParagraphStyleAttributeName : paragraph
  };
  // 3.根据属性字典和字符串,计算字符串使用指定的属性设置时,占用的空间大小,返回CGRect类型
  CGSize contentSize =
      [self.textStr
          boundingRectWithSize:CGSizeMake(self.view.frame.size.width - 40,
                                          MAXFLOAT)
                       options:NSStringDrawingUsesLineFragmentOrigin
                    attributes:attributeDic
                       context:nil]
          .size;
  // 4.构建带格式的文本字符串
  NSMutableAttributedString *attributeStr =
      [[NSMutableAttributedString alloc] initWithString:self.textStr
                                             attributes:attributeDic];
  // 5.构建label
  UILabel *label = [[UILabel alloc] init];
  label.frame = CGRectMake(20, 50, contentSize.width, contentSize.height);
  label.numberOfLines = 0; // 分行显示

  // 将格式化的文本添加到label上
  label.attributedText = attributeStr;
  [self.view addSubview:label];
}

- (void)test2 {
  NSMutableParagraphStyle *paragra = [[NSMutableParagraphStyle alloc] init];
  NSDictionary *attributeDic = @{
    NSFontAttributeName : [UIFont systemFontOfSize:12],
    NSForegroundColorAttributeName : [UIColor blackColor],
    NSKernAttributeName : @10,
    NSParagraphStyleAttributeName : paragra
  };
  NSMutableAttributedString *attributeStr =
      [[NSMutableAttributedString alloc] initWithString:self.textStr
                                             attributes:nil];

  paragra.lineSpacing = 5; // 1,设置行间距
  paragra.paragraphSpacing = 10; // 2,设置段间距
  paragra.alignment = UITextAlignmentLeft; // 3,设置对齐方式
  paragra.firstLineHeadIndent = 50; // 4,首行缩进距离
  paragra.headIndent = 10; // 5，除首行之外其他行缩进
  paragra.tailIndent = 300; // 6,每行容纳字符的宽度
  paragra.minimumLineHeight = 2; // 7,每行最小高度
  paragra.maximumLineHeight = 10; // 8,每行最大高度
  paragra.lineBreakMode = NSLineBreakByCharWrapping; // 9,换行方式
  // lineBreakMode 属性的可选项
  //    {
  //        //        NSLineBreakByWordWrapping = 0,        // Wrap at word
  //        boundaries, default */
  //        //        NSLineBreakByCharWrapping,        /* Wrap at character
  //        boundaries */
  //        //        NSLineBreakByClipping,        /* Simply clip */
  //        //        NSLineBreakByTruncatingHead,  /* Truncate at head of line:
  //        "...wxyz" */
  //        //        NSLineBreakByTruncatingTail,  /* Truncate at tail of line:
  //        "abcd..." */
  //        //        NSLineBreakByTruncatingMiddle /* Truncate middle of line:
  //        "ab...yz" */
  //    }

  [attributeStr addAttribute:NSParagraphStyleAttributeName
                       value:paragra
                       range:NSMakeRange(0, self.textStr.length)];
  CGSize contentSize =
      [self.textStr
          boundingRectWithSize:CGSizeMake(self.view.frame.size.width - 40,
                                          MAXFLOAT)
                       options:NSStringDrawingUsesLineFragmentOrigin
                    attributes:attributeDic
                       context:nil]
          .size;
  // 5.构建label
  UILabel *label = [[UILabel alloc] init];
  label.frame = CGRectMake(20, 50, contentSize.width, contentSize.height);
  label.numberOfLines = 0; // 分行显示

  // 将格式化的文本添加到label上
  label.attributedText = attributeStr;
  [self.view addSubview:label];
}

// 属性Demo
- (void)attributeDemo {

  NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
  NSMutableAttributedString *testStr =
      [[NSMutableAttributedString alloc] initWithString:self.textStr];
  // 1，设置指定范围内的 字体
  [testStr addAttribute:NSFontAttributeName
                  value:[UIFont systemFontOfSize:12]
                  range:NSMakeRange(5, 30)];
  // 2，设置指定范围内 字体颜色
  [testStr addAttribute:NSForegroundColorAttributeName
                  value:[UIColor blueColor]
                  range:NSMakeRange(0, 10)];
  // 3，设置 字体所在区域的背景颜色
  [testStr addAttribute:NSBackgroundColorAttributeName
                  value:[UIColor greenColor]
                  range:NSMakeRange(40, 30)];
  // 4，设置连体属性，取值为NSNumber 对象(整数)
  [testStr addAttribute:NSLigatureAttributeName
                  value:@1
                  range:NSMakeRange(40, 30)];
  // 5，设置指定范围内  字符间距
  [testStr addAttribute:NSKernAttributeName
                  value:@10
                  range:NSMakeRange(70, 30)];
  // 6，设置删除线
  [testStr addAttribute:NSStrikethroughStyleAttributeName
                  value:@1
                  range:NSMakeRange(120, 20)];
  // 7，设置删除线的颜色
  [testStr addAttribute:NSStrikethroughColorAttributeName
                  value:[UIColor redColor]
                  range:NSMakeRange(120, 10)];
  // 8，设置下划线
  [testStr addAttribute:NSUnderlineStyleAttributeName
                  value:@1
                  range:NSMakeRange(140, 20)];
  // 9，设置下划线颜色
  [testStr addAttribute:NSUnderlineColorAttributeName
                  value:[UIColor greenColor]
                  range:NSMakeRange(140, 10)];
  // 10，设置字体倾斜度，负值向左，正值向右
  [testStr addAttribute:NSObliquenessAttributeName
                  value:@-0.5
                  range:NSMakeRange(160, 30)];
  // 11，设置字体拉伸压缩，正值拉伸，负值压缩
  [testStr addAttribute:NSExpansionAttributeName
                  value:@-0.5
                  range:NSMakeRange(190, 20)];
  // 设置文字书写方向，从左向右书写或者从右向左书写
  //    [testStr addAttribute:NSWritingDirectionAttributeName value:@1
  //    range:NSMakeRange(220, 20)];
  // 12，设置文字排版方向，取值为 NSNumber 对象(整数)，0 表示横排文本，1
  // 表示竖排文本
  [testStr addAttribute:NSVerticalGlyphFormAttributeName
                  value:@1
                  range:NSMakeRange(0, testStr.length)];
  // 13，设置链接属性，点击后调用浏览器打开指定URL地址
  [testStr addAttribute:NSLinkAttributeName
                  value:@"http://what-forever.com"
                  range:NSMakeRange(220, 20)];
  // 14，设置笔画宽度，取值为 NSNumber 对象（整数），负值填充效果，正值中空效果
  [testStr addAttribute:NSStrokeWidthAttributeName
                  value:@0.5
                  range:NSMakeRange(240, 30)];
  // 15，填充部分颜色，不是字体颜色，取值为 UIColor 对象
  [testStr addAttribute:NSStrokeColorAttributeName
                  value:[UIColor blueColor]
                  range:NSMakeRange(240, 30)];
  // 16,设置阴影属性，取值为 NSShadow 对象
  [testStr addAttribute:NSShadowAttributeName
                  value:[[NSShadow alloc] init]
                  range:NSMakeRange(270, 30)];
  // 17,设置基线偏移值，取值为 NSNumber （float）,正值上偏，负值下偏
  [testStr addAttribute:NSBaselineOffsetAttributeName
                  value:@10
                  range:NSMakeRange(300, 30)];
  // 18,设置文本段落排版格式，取值为 NSParagraphStyle 对象
  [testStr addAttribute:NSParagraphStyleAttributeName
                  value:paragraph
                  range:NSMakeRange(70, 30)];
}
@end
