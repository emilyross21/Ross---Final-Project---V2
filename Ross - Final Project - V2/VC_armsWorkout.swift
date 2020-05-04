//
//  VC_armsWorkout.swift
//  Ross - Final Project - V2
//
//  Created by Emily Ross on 4/29/20.
//  Copyright © 2020 Emily Ross. All rights reserved.
//

import UIKit

class VC_armsWorkout: UIViewController {
    
    @IBOutlet weak var armCirclesCounter: UILabel!
    @IBOutlet weak var armSwingCounter: UILabel!
    @IBOutlet weak var upDownPlankCounter: UILabel!
    @IBOutlet weak var bandReversePlankCounter: UILabel!
    @IBOutlet weak var tricepDipCounter: UILabel!
    @IBOutlet weak var singleLegTricepDipCounter: UILabel!
    @IBOutlet weak var pushUpCounter: UILabel!
    @IBOutlet weak var spidermanPushUpCounter: UILabel!
    @IBOutlet weak var supermanCounter: UILabel!
    @IBOutlet weak var backExtensionCounter: UILabel!
    @IBOutlet weak var exerciseOne: UILabel!
    @IBOutlet weak var exerciseTwo: UILabel!
    @IBOutlet weak var exerciseThree: UILabel!
    @IBOutlet weak var exerciseFour: UILabel!
    @IBOutlet weak var exerciseFive: UILabel!
    
    
    override func viewWillAppear(_ animate: Bool){
        armCirclesCounter.text = String((parent as! VC_armsManagement).armCircles)
        
        armSwingCounter.text = String((parent as! VC_armsManagement).armSwings)
        
        if(parent as! VC_armsManagement).armCircles > (parent as! VC_armsManagement).armSwings
        {
            exerciseOne.text = "Arm Circles"
        }
        else{
            exerciseOne.text = "Arm Swings"
        }
    
    upDownPlankCounter.text = String((parent as! VC_armsManagement).upDownPlank)
    
    bandReversePlankCounter.text = String((parent as! VC_armsManagement).bandReversePlank)
    
    if(parent as! VC_armsManagement).upDownPlank > (parent as! VC_armsManagement).bandReversePlank
    {
        exerciseTwo.text = "Up Down Plank"
    }
    else{
        exerciseTwo.text = "Band Reverse Plank"
        }
    
    tricepDipCounter.text = String((parent as! VC_armsManagement).tricepDips)
    
    singleLegTricepDipCounter.text = String((parent as! VC_armsManagement).singleLegTricepDips)
    
    if(parent as! VC_armsManagement).tricepDips > (parent as! VC_armsManagement).singleLegTricepDips
    {
        exerciseThree.text = "Tricep Dips"
    }
    else{
        exerciseThree.text = "Single Leg Tricep Dips"
        }
    
    pushUpCounter.text = String((parent as! VC_armsManagement).pushUps)
    
    spidermanPushUpCounter.text = String((parent as! VC_armsManagement).spidermanPushUps)
    
    if(parent as! VC_armsManagement).pushUps > (parent as! VC_armsManagement).spidermanPushUps
    {
        exerciseFour.text = "Push Ups"
    }
    else{
        exerciseFour.text = "Spiderman Push Ups"
        }
    
    supermanCounter.text = String((parent as! VC_armsManagement).superman)
    
    backExtensionCounter.text = String((parent as! VC_armsManagement).backExtensions)
    
    if(parent as! VC_armsManagement).superman > (parent as! VC_armsManagement).backExtensions
    {
        exerciseFive.text = "Supermans"
    }
    else{
        exerciseFive.text = "Back Extensions"
        }
    
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
