// automatically generated, do not modify !!!

#import "FBtestRootType.h"

@implementation FBtestRootType 

- (FBMutableArray<FBtestPerson *> *) items {

    _items = [self fb_getTables:4 origin:_items className:[FBtestPerson class]];

    return _items;

}

- (void) add_items {

    [self fb_addTables:_items voffset:4 offset:4];

    return ;

}

- (int32_t) stateid {

    _stateid = [self fb_getInt32:6 origin:_stateid];

    return _stateid;

}

- (void) add_stateid {

    [self fb_addInt32:_stateid voffset:6 offset:8];

    return ;

}

- (int64_t) time {

    _time = [self fb_getInt64:8 origin:_time];

    return _time;

}

- (void) add_time {

    [self fb_addInt64:_time voffset:8 offset:12];

    return ;

}

- (instancetype)init{

    if (self = [super init]) {

        bb_pos = 16;

        origin_size = 20+bb_pos;

        bb = [[FBMutableData alloc]initWithLength:origin_size];

        [bb setInt32:bb_pos offset:0];

        [bb setInt32:10 offset:bb_pos];

        [bb setInt16:10 offset:bb_pos-[bb getInt32:bb_pos]];

        [bb setInt16:20 offset:bb_pos-[bb getInt32:bb_pos]+2];

    }

    return self;

}

@end
