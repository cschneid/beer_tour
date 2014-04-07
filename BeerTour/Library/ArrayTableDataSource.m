#import "ArrayTableDataSource.h"

@implementation ArrayTableDataSource {
}

// By default init with empty array.
-(id)init { return [self initWithArray:[[NSArray alloc]init]]; }

-(id)initWithArray:(NSArray*)arr
{
  if (self = [super init]) {
    _cells = arr;
  }
  return self;
}

#pragma mark UITableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return _cells[indexPath.row];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [_cells count];
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
  return NO;
}


@end
