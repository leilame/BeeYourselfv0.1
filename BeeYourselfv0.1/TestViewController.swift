//
//  TestViewController.swift
//  BeeYourselfv0.1
//

//  Copyright © 2019 Emad Heydari. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var nextButton: UIButton!
    var totalScore:Float = 0.0
    var questionNumber:Int = 1 
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nextButton.isEnabled = false;
        self.slider.addTarget(self, action: #selector(TestViewController.onLuminosityChange), for: UIControl.Event.valueChanged)
        // Do any additional setup after loading the view.
    }
    //enable button when the user changes the slider
    @objc func onLuminosityChange(){
        self.nextButton.isEnabled = true;
        if let image = UIImage(named: "testNextButtonEnabled") {
            nextButton.setImage(image, for: [])
        }
    }
    //send historical test data to next VC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //if the next step is another question, call this segue
        if segue.identifier == "testSegue" {
            if let viewController = segue.destination as? TestViewController {
                viewController.totalScore=totalScore+calculateScoreForStep(score:slider.value)
                viewController.questionNumber=questionNumber+1
            }
        }
        //Next step after 12th question, calculate total score with percentage

        if segue.identifier == "testFinalSegue" {
            if let viewController = segue.destination as? TestFinalViewController {
                viewController.totalScore=totalScore/12*100
            }
        }
        
    }
    
    //predefined negative and positive questions to calceulate 
    func calculateScoreForStep(score: Float) -> Float{
        if(questionNumber==2 || questionNumber==3 || questionNumber==5 || questionNumber==6 || questionNumber==7 || questionNumber==10)
        {
            return score;
        }
        else {
            return 1-score;
        }
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
