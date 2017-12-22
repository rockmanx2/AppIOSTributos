//
//  DataViewController.swift
//  AppIOSTributos
//
//  Created by user907631 on 12/21/17.
//  Copyright © 2017 user907631. All rights reserved.
//

import UIKit
import WebKit

class DataViewController: UIViewController {

    @IBOutlet var WebView: WKWebView!
    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if dataObject == "Web view"{
        let url1 = URL (string: "http://fronttributos-apptributos.a3c1.starter-us-west-1.openshiftapps.com/")
        let request = URLRequest(url: url1!)
        WebView.load(request)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
    }


}


