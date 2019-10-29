// automatically generated, do not modify !!!

#import "FBtestPerson.h"

@implementation FBtestPerson 

- (int32_t) id {

    _id = [self fb_getInt32:4 origin:_id];

    return _id;

}

- (void) add_id {

    [self fb_addInt32:_id voffset:4 offset:4];

    return ;

}

- (NSString *) name {

    _name = [self fb_getString:6 origin:_name];

    return _name;

}

- (void) add_name {

    [self fb_addString:_name voffset:6 offset:8];

    return ;

}

- (int64_t) code {

    _code = [self fb_getInt64:8 origin:_code];

    return _code;

}

- (void) add_code {

    [self fb_addInt64:_code voffset:8 offset:12];

    return ;

}

- (BOOL) isVip {

    _isVip = [self fb_getBool:10 origin:_isVip];

    return _isVip;

}

- (void) add_isVip {

    [self fb_addBool:_isVip voffset:10 offset:20];

    return ;

}

- (FBMutableArray<FBtestCar *> *) carList {

    _carList = [self fb_getTables:12 origin:_carList className:[FBtestCar class]];

    return _carList;

}

- (void) add_carList {

    [self fb_addTables:_carList voffset:12 offset:21];

    return ;

}

- (instancetype)init{

    if (self = [super init]) {

        bb_pos = 20;

        origin_size = 25+bb_pos;

        bb = [[FBMutableData alloc]initWithLength:origin_size];

        [bb setInt32:bb_pos offset:0];

        [bb setInt32:14 offset:bb_pos];

        [bb setInt16:14 offset:bb_pos-[bb getInt32:bb_pos]];

        [bb setInt16:25 offset:bb_pos-[bb getInt32:bb_pos]+2];

    }

    return self;

}

@end
