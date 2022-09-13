//
//  ViewController.swift
//  LearnDesignPattern
//
//  Created by beforeold on 2022/9/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        test()
    }

    private func test() {
        Demo.AbstractClass.test()
    }
}

