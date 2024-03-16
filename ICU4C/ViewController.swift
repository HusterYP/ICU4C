//
//  ViewController.swift
//  ICU4C
//
//  Created by Ping on 2024/3/16.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        if let hello = icuToUpper(str: "hello world!") {
            print(hello)
        }
    }
}
