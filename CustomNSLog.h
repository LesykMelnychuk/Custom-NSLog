//
//  CustomNSLog.h
//  BulkLoads
//
//  Created by Les Melnychuk on 9/28/16.
//  Copyright © 2016 Lemberg Solutions. All rights reserved.
//

#define NSLog(args...) BLLog(args);


void BLLog(NSString *format, ...);
