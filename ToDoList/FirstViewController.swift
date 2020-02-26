//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Lachlan Scott on 2020/02/25.
//  Copyright © 2020 Fudoshin Design. All rights reserved.
//

import UIKit

// some basic data to get the table started
var tableData = ["Buy a shovel", "Get a friend", "Cycle 5kms", "Bury a friend", "Cycle back", "Work on alibi"]


class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

	@IBOutlet weak var myTableView: UITableView!

	override func viewDidAppear(_ animated: Bool) {
			myTableView.reloadData()
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
	{
		return tableData.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
	{
		let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "myCell")
		cell.textLabel?.text = tableData[indexPath.row]
		return cell
	}
	
	// This is the simplest way to delete rows with minimum code
	func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
	{
		if editingStyle == UITableViewCell.EditingStyle.delete {
			tableData.remove(at: indexPath.row)
			myTableView.reloadData()
		}
	}
	
/*
	var selectedIndexPath = IndexPath()
	
	// if you select the row, store that row
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		//myTableView.isEditing = true
		//tableView.setEditing(true, animated: true)
		selectedIndexPath = indexPath
		print("Row selected at: ", indexPath.row)
		
		
	}
	
	// Version #2
	func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
		// overrule the tableView.isEditing declaration
		return .none
		
	}
	// Version #2
	func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
		return false
	}
	
	// Version #2
	func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
		let movedObject = tableData[sourceIndexPath.row]
		tableData.remove(at: sourceIndexPath.row)
		tableData.insert(movedObject, at: destinationIndexPath.row)
	}

*/
}

