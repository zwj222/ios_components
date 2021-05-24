#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AViewController.h"
#import "Target_Module_A.h"

FOUNDATION_EXPORT double Module_AVersionNumber;
FOUNDATION_EXPORT const unsigned char Module_AVersionString[];

