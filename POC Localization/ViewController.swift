//
//  ViewController.swift
//  POC Localization
//
//  Created by Rishavgupta on 1/18/19.
//  Copyright © 2019 Nuclei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var textView: UITextField!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "nuclei.png")
        labelText.text = "Enter your name"
        textView.placeholder = "Enter your name here"
    }

}

