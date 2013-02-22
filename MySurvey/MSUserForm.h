//
//  MSUserForm.h
//  MySurvey
//
//  Created by Sidney Maestre on 2/21/13.
//  Copyright (c) 2013 Sidney Maestre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Survey/SurveyFormModel.h>
#import <Survey/SurveyField.h>

@interface MSUserForm : SurveyFormModel

@property (strong, nonatomic) SurveyField *firstname;
@property (strong, nonatomic) SurveyField *lastname;
@property (strong, nonatomic) SurveyEmailField *email;
@property (strong, nonatomic) SurveyField *username;

@end
