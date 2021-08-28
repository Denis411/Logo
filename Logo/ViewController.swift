//
//  ViewController.swift
//  Logo
//
//  Created by Programmer on 8/28/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let logo = Logo(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        logo.layer.cornerRadius = logo.bounds.height / 2
        logo.clipsToBounds = true
        logo.center = view.center
        let red = CGFloat(0xFE)/255
        let green = CGFloat(0xDA)/255
        let blue = CGFloat(0x01)/255
        
        logo.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        view.addSubview(logo)
        view.backgroundColor = .red
    }


}

