//
//  CustomNSLog.m
//  BulkLoads
//
//  Created by Les Melnychuk on 9/28/16.
//  Copyright © 2016 Lemberg Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CustomNSLog.h"
#import <stdio.h>


void BLLog(NSString *format, ...) {
#ifdef DEBUG
  
  va_list ap;
    // Start using variable argument list.
  va_start (ap, format);
  if (![format hasSuffix: @"\n"])
  {
    format = [format stringByAppendingString: @"\n"];
  }
  
  NSString *body = [[NSString alloc] initWithFormat:format arguments:ap];
  va_end (ap);
  
  NSDate *today = [NSDate date];
  NSDateFormatter* dateFromString = [NSDateFormatter new];
  dateFromString.dateFormat = @"yyyy-MM-dd HH:mm:ss";
  
  NSString *dateString = [dateFromString stringFromDate:today];
  
  fprintf(stderr, "%s: %s", [dateString UTF8String], [body UTF8String]);

#endif
}
