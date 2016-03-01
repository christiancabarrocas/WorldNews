// Generated by Apple Swift version 2.1.1 (swiftlang-700.1.101.15 clang-700.1.81)
#pragma clang diagnostic push

#if defined(__has_include) && __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if defined(__has_include) && __has_include(<uchar.h>)
# include <uchar.h>
#elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
#endif

typedef struct _NSZone NSZone;

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif

#if defined(__has_attribute) && __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if defined(__has_attribute) && __has_attribute(objc_subclassing_restricted) 
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if defined(__has_attribute) && __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_EXTRA _name : _type
#endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
#if defined(__has_feature) && __has_feature(modules)
@import UIKit;
@import ObjectiveC;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"

@interface UICollectionView (SWIFT_EXTENSION(RxDataSources))
@end

@class NSIndexPath;

@interface UICollectionView (SWIFT_EXTENSION(RxDataSources))
- (void)insertItemsAtIndexPaths:(NSArray<NSIndexPath *> * __nonnull)paths animationStyle:(UITableViewRowAnimation)animationStyle;
- (void)deleteItemsAtIndexPaths:(NSArray<NSIndexPath *> * __nonnull)paths animationStyle:(UITableViewRowAnimation)animationStyle;
- (void)moveItemAtIndexPath:(NSIndexPath * __nonnull)from to:(NSIndexPath * __nonnull)to;
- (void)reloadItemsAtIndexPaths:(NSArray<NSIndexPath *> * __nonnull)paths animationStyle:(UITableViewRowAnimation)animationStyle;
- (void)insertSections:(NSArray<NSNumber *> * __nonnull)sections animationStyle:(UITableViewRowAnimation)animationStyle;
- (void)deleteSections:(NSArray<NSNumber *> * __nonnull)sections animationStyle:(UITableViewRowAnimation)animationStyle;
- (void)moveSection:(NSInteger)from to:(NSInteger)to;
- (void)reloadSections:(NSArray<NSNumber *> * __nonnull)sections animationStyle:(UITableViewRowAnimation)animationStyle;
@end


@interface UITableView (SWIFT_EXTENSION(RxDataSources))
@end


@interface UITableView (SWIFT_EXTENSION(RxDataSources))
- (void)insertItemsAtIndexPaths:(NSArray<NSIndexPath *> * __nonnull)paths animationStyle:(UITableViewRowAnimation)animationStyle;
- (void)deleteItemsAtIndexPaths:(NSArray<NSIndexPath *> * __nonnull)paths animationStyle:(UITableViewRowAnimation)animationStyle;
- (void)moveItemAtIndexPath:(NSIndexPath * __nonnull)from to:(NSIndexPath * __nonnull)to;
- (void)reloadItemsAtIndexPaths:(NSArray<NSIndexPath *> * __nonnull)paths animationStyle:(UITableViewRowAnimation)animationStyle;
- (void)insertSections:(NSArray<NSNumber *> * __nonnull)sections animationStyle:(UITableViewRowAnimation)animationStyle;
- (void)deleteSections:(NSArray<NSNumber *> * __nonnull)sections animationStyle:(UITableViewRowAnimation)animationStyle;
- (void)moveSection:(NSInteger)from to:(NSInteger)to;
- (void)reloadSections:(NSArray<NSNumber *> * __nonnull)sections animationStyle:(UITableViewRowAnimation)animationStyle;
@end

@class UICollectionViewCell;
@class UICollectionReusableView;

SWIFT_CLASS("_TtC13RxDataSources34_CollectionViewSectionedDataSource")
@interface _CollectionViewSectionedDataSource : NSObject <UICollectionViewDataSource>
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView * __nonnull)collectionView;
- (NSInteger)collectionView:(UICollectionView * __nonnull)collectionView numberOfItemsInSection:(NSInteger)section;
- (UICollectionViewCell * __nonnull)collectionView:(UICollectionView * __nonnull)collectionView cellForItemAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (UICollectionReusableView * __nonnull)collectionView:(UICollectionView * __nonnull)collectionView viewForSupplementaryElementOfKind:(NSString * __nonnull)kind atIndexPath:(NSIndexPath * __nonnull)indexPath;
- (BOOL)collectionView:(UICollectionView * __nonnull)collectionView canMoveItemAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (void)collectionView:(UICollectionView * __nonnull)collectionView moveItemAtIndexPath:(NSIndexPath * __nonnull)sourceIndexPath toIndexPath:(NSIndexPath * __nonnull)destinationIndexPath;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class UITableViewCell;

SWIFT_CLASS("_TtC13RxDataSources29_TableViewSectionedDataSource")
@interface _TableViewSectionedDataSource : NSObject <UITableViewDataSource>
- (NSInteger)numberOfSectionsInTableView:(UITableView * __nonnull)tableView;
- (NSInteger)tableView:(UITableView * __nonnull)tableView numberOfRowsInSection:(NSInteger)section;
- (UITableViewCell * __nonnull)tableView:(UITableView * __nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (NSString * __nullable)tableView:(UITableView * __nonnull)tableView titleForHeaderInSection:(NSInteger)section;
- (NSString * __nullable)tableView:(UITableView * __nonnull)tableView titleForFooterInSection:(NSInteger)section;
- (BOOL)tableView:(UITableView * __nonnull)tableView canEditRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (BOOL)tableView:(UITableView * __nonnull)tableView canMoveRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

#pragma clang diagnostic pop
