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
        logo.backgroundColor = .yellow

        logo.layer.cornerRadius = 100
        logo.layer.masksToBounds = true
        let viewIn = UIView(frame: CGRect(x: 100, y: 100, width: 5, height: 5))
        viewIn.backgroundColor = .red
        logo.addSubview(viewIn)
        
        let circleIn = UIView(frame: CGRect(x: 0, y: 0, width: logo.bounds.width * 2, height: logo.bounds.height * 2))
        circleIn.center = CGPoint(x: logo.bounds.maxX, y: logo.bounds.maxY)
        circleIn.layer.cornerRadius = logo.bounds.height * 2
        circleIn.backgroundColor = .white
        logo.addSubview(circleIn)
        view.addSubview(logo)
        view.backgroundColor = .red

    }


}

