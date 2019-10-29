// automatically generated, do not modify !!!

#import "FBtestCar.h"

@implementation FBtestCar 

- (int32_t) id {

    _id = [self fb_getInt32:4 origin:_id];

    return _id;

}

- (void) add_id {

    [self fb_addInt32:_id voffset:4 offset:4];

    return ;

}

- (int64_t) number {

    _number = [self fb_getInt64:6 origin:_number];

    return _number;

}

- (void) add_number {

    [self fb_addInt64:_number voffset:6 offset:8];

    return ;

}

- (NSString *) describle {

    _describle = [self fb_getString:8 origin:_describle];

    return _describle;

}

- (void) add_describle {

    [self fb_addString:_describle voffset:8 offset:16];

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
