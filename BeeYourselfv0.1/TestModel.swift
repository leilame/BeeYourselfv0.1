//
//  TestModel.swift
//  BeeYourselfv0.1
//

//  Copyright © 2019 Emad Heydari. All rights reserved.
//

import UIKit

class TestModel: NSObject {
    
    func calculateScoreForStep(step: Int, score: Double) -> Double{
        if(step==2 || step==3 || step==5 || step==6 || step==7 || step==10)
        {
            return score*4+1;
        }
        else {
            return 5-(score*4+1);
        }
    }
}
