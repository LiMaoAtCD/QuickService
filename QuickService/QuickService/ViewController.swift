//
//  ViewController.swift
//  QuickService
//
//  Created by AlienLi on 15/10/9.
//  Copyright © 2015年 MarcoLi. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedContext: NSManagedObjectContext = appDelegate.managedObjectContext
        
        let fetchRequest = NSFetchRequest(entityName: "User")
        
        do {
            let results = try managedContext.executeRequest(fetchRequest)
            print("=== \(results)")
        
        } catch let error as NSError {
            print(error)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

