//
//  ViewController.swift
//  Spedish
//
//  Created by Huaxi Wang on 9/14/15.
//  Copyright (c) 2015 Spedish. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
	

	@IBOutlet weak var username: UITextField!
	
	@IBOutlet weak var password: UITextField!
	
	@IBAction func userSignUp(sender: AnyObject) {
		
		Alamofire.request(.GET, "http://localhost:8000/auth/").response { request, response, data, error in
			//print(request)
			print(response)
			print(error)
		}

		
	}
	
	@IBAction func login(sender: AnyObject) {
		Alamofire.request(.POST, "http://localhost:8000/auth/", parameters: ["username": username.text, "password": password.text])
			.response { request, response, data, error in
				//print(request)
				print(response)
				print(error)
		}
		

	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

