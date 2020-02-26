//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Lachlan Scott on 2020/02/25.
//  Copyright © 2020 Fudoshin Design. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

	@IBOutlet weak var newItemField: UITextField!
	
	
	@IBAction func addItem(_ sender: Any)
	{
		// check we have some data
		if newItemField.text != "" {
			tableData.append(newItemField.text!)
			// reset the field
			newItemField.text = ""
		}
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}


}

