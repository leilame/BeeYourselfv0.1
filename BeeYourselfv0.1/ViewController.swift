//
//  ViewController.swift
//  BeeYourselfv0.1
//

//  Copyright © 2019 Emad Heydari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scrollView.contentSize = CGSize(width: scrollView.frame.width, height: scrollView.frame.height*2.1)
    }
    


}

