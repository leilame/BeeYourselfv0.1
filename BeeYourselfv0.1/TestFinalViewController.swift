//
//  TestFinalViewController.swift
//  BeeYourselfv0.1
//

//  Copyright © 2019 Emad Heydari. All rights reserved.
//

import UIKit

class TestFinalViewController: UIViewController {

    var totalScore:Float = 0.0
    
    @IBOutlet weak var tempLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        tempLabel.text = "\(totalScore)"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
