//
//  CreateTaskViewController.swift
//  DoItRightNow!
//
//  Created by Marc Streeter on 12/14/16.
//  Copyright © 2016 Developer Warriors. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

   
    @IBOutlet weak var importantSwitch: UISwitch!
   @IBOutlet weak var taskNameTextField: UITextField!
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func addTapped(_ sender: AnyObject) {
    //Create Task from the outlet information  
   let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
   let task = Task(context: context)
    
   task.name = taskNameTextField.text!
   task.important = importantSwitch.isOn
    (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        
        //Add new task to array in previous viewController
   
     //Pop back
    navigationController!.popViewController(animated: true)
    
    }
    
    }
