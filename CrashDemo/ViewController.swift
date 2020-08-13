//
//  ViewController.swift
//  CrashDemo
//
//  Created by Parth on 13/08/20.
//  Copyright © 2020 Samcom. All rights reserved.
//

import UIKit
import FirebaseCrashlytics

class ViewController: UIViewController {

   override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
        let button = UIButton(type: .roundedRect)
        button.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
        button.setTitle("Crash", for: [])
        button.addTarget(self, action: #selector(self.crashButtonTapped(_:)), for: .touchUpInside)
        view.addSubview(button)
    }

    @IBAction func crashButtonTapped(_ sender: AnyObject) {
        fatalError()

    }


}

