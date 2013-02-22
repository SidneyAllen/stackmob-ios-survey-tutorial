//
//  MSUserForm.m
//  MySurvey
//
//  Created by Sidney Maestre on 2/21/13.
//  Copyright (c) 2013 Sidney Maestre. All rights reserved.
//

#import "MSAppDelegate.h"
#import "MSUserForm.h"
#import "User.h"

@implementation MSUserForm

+ (Class)managedObjectClass
{
    return [User class];
}

+ (NSManagedObjectContext *)managedObjectContext
{
    return ((MSAppDelegate *)[[UIApplication sharedApplication] delegate]).managedObjectContext;
}

+ (NSArray *)fields
{
    return @[@"firstname", @"lastname", @"email",@"username"];
}


- (SurveyField *)firstname
{
    SurveyField *field  = [SurveyField fieldWithPlaceholder:@"first name"];
    
    return field;
}

- (SurveyField *)lastname
{
    SurveyField *field  = [SurveyField fieldWithPlaceholder:@"last name"];
    
    return field;
}

- (SurveyField *)email
{
    SurveyField *field  = [SurveyEmailField fieldWithPlaceholder:@"joe@example.com"];
    
    return field;
}

- (SurveyField *)username
{
    SurveyField *field  = [SurveyEmailField fieldWithPlaceholder:@"username"];
    
    return field;
}

@end
