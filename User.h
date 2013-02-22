//
//  User.h
//  MySurvey
//
//  Created by Sidney Maestre on 2/21/13.
//  Copyright (c) 2013 Sidney Maestre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface User : NSManagedObject

@property (nonatomic, retain) NSString * firstname;
@property (nonatomic, retain) NSString * lastname;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * username;

@end
