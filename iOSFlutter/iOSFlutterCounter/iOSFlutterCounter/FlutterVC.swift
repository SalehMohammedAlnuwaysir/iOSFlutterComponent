//
//  FlutterVC.swift
//  iOSFlutterCounter
//
//  Created by Saleh Mohammed  on 11/03/2020.
//  Copyright © 2020 Saleh Mohammed . All rights reserved.
//

import UIKit
import Flutter

class FlutterVC: UIViewController {
    
    var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .darkGray
        
        button = UIButton(type: UIButton.ButtonType.custom)

        button.frame = CGRect(x: 100, y: 500, width: UIScreen.main.bounds.width / 2, height: 100)
        button.setTitle("Open Flutter counter", for: [])
        button.addTarget(self, action: #selector(showFlutter), for: .touchUpInside)
        button.clipsToBounds = true
        button.layer.cornerRadius = 15
        button.backgroundColor = .lightGray
        
        self.view.addSubview(button)
        // Do any additional setup after loading the view.
    }
    
    @objc func showFlutter() {
      let flutterViewController = FlutterViewController(project: nil, nibName: nil, bundle: nil)
      present(flutterViewController, animated: true, completion: nil)
    }
}
