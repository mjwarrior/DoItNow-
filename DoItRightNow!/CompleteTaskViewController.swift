//
//  CompleteTaskViewController.swift
//  DoItRightNow!
//
//  Created by Marc Streeter on 12/14/16.
//  Copyright © 2016 Developer Warriors. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    
    @IBOutlet weak var taskLabel: UILabel!
    var task :  Task? = nil

    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task!.important{
            taskLabel.text = "❗️\(task!.name!)"
        }else{
            taskLabel.text = task!.name!
        }

    }

    
    @IBAction func completeTapped(_ sender: AnyObject) {
       let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    navigationController!.popViewController(animated: true)
    }
    
    
}
