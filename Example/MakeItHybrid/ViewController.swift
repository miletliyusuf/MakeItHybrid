//
//  ViewController.swift
//  MakeItHybrid
//
//  Created by yusufm on 07/06/2015.
//  Copyright (c) 2015 yusufm. All rights reserved.
//

import UIKit
import MakeItHybrid

class ViewController: UIViewController {

	var openUrl = MakeItHybrid()
	
    override func viewDidLoad() {
        super.viewDidLoad()
		openUrl.superView = self.view
		openUrl.makeHybridWithUrlString("http://miletli.com")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

