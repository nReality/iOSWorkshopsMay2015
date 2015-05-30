//
//  COContact.h
//  Contacts
//
//  Created by jacdevos on 2015/05/30.
//  Copyright (c) 2015 nReality. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface COContact : NSManagedObject

@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;
@property (nonatomic, retain) NSString * phoneNumber;

@end
