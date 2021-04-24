#include <UIKit/UIKit.h>

@interface UIImage (Private)
+ (UIImage *)imageNamed:(NSString *)named inBundle:(NSBundle *)bundle;
@end

UIImage *bg;
UIImage *darkBg;

%hook NotesBackgroundView
- (UIColor *)backgroundColor { return [UIColor colorWithPatternImage:(UITraitCollection.currentTraitCollection.userInterfaceStyle == UIUserInterfaceStyleDark ? darkBg : bg)]; }
%end

%ctor {
  /*bg = [UIImage imageNamed:@"notesbg_light" inBundle:[NSBundle bundleWithPath:@"/var/mobile/Documents/"]];
  darkBg = [UIImage imageNamed:@"notesbg_dark" inBundle:[NSBundle bundleWithPath:@"/var/mobile/Documents/"]];*/
bg = [UIImage imageNamed:@"notesbg_light" inBundle:[NSBundle bundleWithPath:@"/Library/BringBackTheTexture/"]];
  darkBg = [UIImage imageNamed:@"notesbg_dark" inBundle:[NSBundle bundleWithPath:@"/Library/BringBackTheTexture/"]];
}
