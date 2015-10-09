//
//  UserConfigureFile.swift
//  QuickService
//
//  Created by AlienLi on 15/10/9.
//  Copyright © 2015年 MarcoLi. All rights reserved.
//

import UIKit

class UserConfigureFile: NSObject {
    
    class func isSomeOneLogin() -> Bool {
        
        let isLogin: Bool = NSUserDefaults.standardUserDefaults().boolForKey("QuickService_account_login")
        return isLogin
    }
    
    class func setSomeOneLogin(login: Bool){
        NSUserDefaults.standardUserDefaults().setBool(login, forKey: "QuickService_account_login")
    }
    
    class func fetchCurrentUser() -> String? {
        let phone = NSUserDefaults.standardUserDefaults().stringForKey("QuickService_phone")
        
        return phone
    }
    
    class func updateCurrentUser(phone: String){
        
        NSUserDefaults.standardUserDefaults().setObject(phone, forKey: "QuickService_phone")
    }
    
    
}
