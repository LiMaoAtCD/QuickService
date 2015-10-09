//
//  User+CoreDataProperties.swift
//  QuickService
//
//  Created by AlienLi on 15/10/9.
//  Copyright © 2015年 MarcoLi. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension User {

    @NSManaged var phone: String?
    @NSManaged var password: String?

}
