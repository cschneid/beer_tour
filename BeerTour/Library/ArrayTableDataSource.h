#import <Foundation/Foundation.h>

/**
 *  Generic data source backed by an array of cell objects.  Very simple, but this pattern keeps appearing.
 */
@interface ArrayTableDataSource : NSObject <UITableViewDataSource>

-(id)initWithArray:(NSArray*)arr;

@property (strong, nonatomic) NSArray *cells;

@end
