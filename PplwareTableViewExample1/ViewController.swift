//
//  ViewController.swift
//  PplwareTableViewExample1
//
//  Created by Edgar Clerigo on 18/04/15.
//  Copyright (c) 2015 Edgar Clerigo. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
	
	@IBOutlet var tblExample : UITableView!
	
	var listElements : NSMutableArray = NSMutableArray()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		tblExample.delegate = self
		tblExample.dataSource = self
		
		tblExample.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cellID")
		
		listElements.addObject("elemento 1")
		listElements.addObject("elemento 5")
		listElements.addObject("elemento 3")
		listElements.addObject("elemento 6")

	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}
	
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return listElements.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		
		var cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cellID", forIndexPath: indexPath) as! UITableViewCell
		
		var elementString: String = listElements[indexPath.row] as! String
		
		cell.textLabel!.text = elementString
		
		return cell
	}
}

