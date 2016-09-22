#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)awakeFromNib
{
    NSView *view = [self viewToSubstitute];
    if (view) {
        [self setViewToSubstitute:nil];
        [[self view] setFrame:[view frame]];
        [[self view] setAutoresizingMask:[view autoresizingMask]];
        [[view superview] replaceSubview:view with:[self view]];
        
    }
}

@end
