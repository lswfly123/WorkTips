//是否是3.5寸
#define IS_SCREEN_35_INCH                                                      \
  ([UIScreen instancesRespondToSelector:@selector(currentMode)]                \
       ? CGSizeEqualToSize(CGSizeMake(640, 960),                               \
                           [[UIScreen mainScreen] currentMode].size)           \
       : NO)

#define IS_SCREEN_4_INCH                                                       \
  ([UIScreen instancesRespondToSelector:@selector(currentMode)]                \
       ? CGSizeEqualToSize(CGSizeMake(640, 1136),                              \
                           [[UIScreen mainScreen] currentMode].size)           \
       : NO)

//是否是4寸
#define IS_SCREEN_4_INCH                                                       \
  ([UIScreen instancesRespondToSelector:@selector(currentMode)]                \
       ? CGSizeEqualToSize(CGSizeMake(640, 1136),                              \
                           [[UIScreen mainScreen] currentMode].size)           \
       : NO)
//是否是IPAD
#define IsPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

// 判断是否为IPhone6 plus
#define isIPhone6plus                                                          \
  ([UIScreen instancesRespondToSelector:@selector(currentMode)]                \
       ? CGSizeEqualToSize(CGSizeMake(1242, 2208),                             \
                           [[UIScreen mainScreen] currentMode].size)           \
       : NO)

// 判断是否为IPhone6
#define isIPhone6                                                              \
  ([UIScreen instancesRespondToSelector:@selector(currentMode)]                \
       ? CGSizeEqualToSize(CGSizeMake(750, 1334),                              \
                           [[UIScreen mainScreen] currentMode].size)           \
       : NO)

#define IS_IOS5                                                                \
  ([[UIDevice currentDevice]                                                   \
           .systemVersion compare:@"5.1"                                       \
                          options:NSNumericSearch] == NSOrderedAscending)

#define IS_IOS6                                                                \
  ([[UIDevice currentDevice]                                                   \
           .systemVersion                                                      \
       compare:@"6.0"                                                          \
       options:NSNumericSearch] != NSOrderedAscending) //是否ios6及以上系统

#define IS_IOS7                                                                \
  ([[UIDevice currentDevice]                                                   \
           .systemVersion                                                      \
       compare:@"7.0"                                                          \
       options:NSNumericSearch] != NSOrderedAscending) //是否ios7及以上系统

#define IS_OS8_OR_LATER                                                        \
  ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)

#define IS_IPHONE5                                                             \
  ([UIScreen instancesRespondToSelector:@selector(currentMode)]                \
       ? CGSizeEqualToSize(CGSizeMake(640, 1136),                              \
                           [[UIScreen mainScreen] currentMode].size)           \
       : NO)


//----------------------系统----------------------------

//获取系统版本
#define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
#define CurrentSystemVersion [[UIDevice currentDevice] systemVersion]

//获取当前语言
#define CurrentLanguage ([[NSLocale preferredLanguages] objectAtIndex:0])

//判断是否 Retina屏、设备是否是iphone 5、是否是iPad
#define isRetina                                                               \
  ([UIScreen instancesRespondToSelector:@selector(currentMode)]                \
       ? CGSizeEqualToSize(CGSizeMake(640, 960),                               \
                           [[UIScreen mainScreen] currentMode].size)           \
       : NO)
#define iPhone5                                                                \
  ([UIScreen instancesRespondToSelector:@selector(currentMode)]                \
       ? CGSizeEqualToSize(CGSizeMake(640, 1136),                              \
                           [[UIScreen mainScreen] currentMode].size)           \
       : NO)

#define iPhone6                                                                \
([UIScreen instancesRespondToSelector:@selector(currentMode)]                \
? CGSizeEqualToSize(CGSizeMake(750, 1334),                              \
[[UIScreen mainScreen] currentMode].size)           \
: NO)
#define isPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

//-------------------获取设备大小-------------------------

#define Navigation_HEIGHT                                                      \
  self.navigationController.navigationBar.frame.size.height

#define TABAR_HEIGHT ([UIScreen mainScreen].bounds.size.height) > 480 ? 64 : 44
//获取屏幕 宽度、高度
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
#define APP_WIDTH ([UIScreen mainScreen].applicationFrame.size.width)
#define APP_HEIGHT ([UIScreen mainScreen].applicationFrame.size.height)
//-------------------获取设备大小-------------------------

//判断是真机还是模拟器
#if TARGET_OS_IPHONE
// iPhone Device
#endif

#if TARGET_IPHONE_SIMULATOR
// iPhone Simulator
#endif

//检查系统版本
#define SYSTEM_VERSION_EQUAL_TO(v)                                             \
  ([[[UIDevice currentDevice] systemVersion]                                   \
       compare:v                                                               \
       options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)                                         \
  ([[[UIDevice currentDevice] systemVersion]                                   \
       compare:v                                                               \
       options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)                             \
  ([[[UIDevice currentDevice] systemVersion]                                   \
       compare:v                                                               \
       options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                                            \
  ([[[UIDevice currentDevice] systemVersion]                                   \
       compare:v                                                               \
       options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)                                \
  ([[[UIDevice currentDevice] systemVersion]                                   \
       compare:v                                                               \
       options:NSNumericSearch] != NSOrderedDescending)

//----------------------图片----------------------------

//读取本地图片
#define LOADIMAGE(file, ext)                                                   \
  [UIImage                                                                     \
      imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:file      \
                                                              ofType:ext]]

//定义UIImage对象
#define IMAGE(A)                                                               \
  [UIImage                                                                     \
      imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:A         \
                                                              ofType:nil]]

//定义UIImage对象
#define ImageNamed(_pointer) [UIImage imageNamed:[UIUtil imageName:_pointer]]


//带有RGBA的颜色设置
#define COLOR(R, G, B, A)                                                      \
  [UIColor colorWithRed:R / 255.0 green:G / 255.0 blue:B / 255.0 alpha:A]


#define RGB(r, g, b) RGBA(r, g, b, 1.0f)


//----------------------颜色类--------------------------

//----------------------其他----------------------------

//方正黑体简体字体定义
#define FONT(F) [UIFont fontWithName:@"FZHTJW--GB1-0" size:F]

//程序的本地化,引用国际化的文件
#define MyLocal(x, ...) NSLocalizedString(x, nil)

// G－C－D
#define BACK(block)                                                            \
  dispatch_async(                                                              \
      dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block)
#define MAIN(block) dispatch_async(dispatch_get_main_queue(), block)

// NSUserDefaults 实例化
#define USER_DEFAULT [NSUserDefaults standardUserDefaults]

//由角度获取弧度 有弧度获取角度
#define degreesToRadian(x) (M_PI * (x) / 180.0)
#define radianToDegrees(radian) (radian * 180.0) / (M_PI)

