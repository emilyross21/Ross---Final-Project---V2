//
//  VC_legsWorkout.swift
//  Ross - Final Project - V2
//
//  Created by Emily Ross on 4/29/20.
//  Copyright © 2020 Emily Ross. All rights reserved.
//

import UIKit

class VC_legsWorkout: UIViewController {
    
    @IBOutlet weak var wallSitCounter: UILabel!
    @IBOutlet weak var wallSitCalfRaiseCounter: UILabel!
    @IBOutlet weak var burpeesCounter: UILabel!
    @IBOutlet weak var jumpSquatCounter: UILabel!
    @IBOutlet weak var squatWithPulseCounter: UILabel!
    @IBOutlet weak var squatCounter: UILabel!
    @IBOutlet weak var heismanCounter: UILabel!
    @IBOutlet weak var highKneesCounter: UILabel!
    @IBOutlet weak var sideLungeCounter: UILabel!
    @IBOutlet weak var lungeCounter: UILabel!
    @IBOutlet weak var exerciseOne: UILabel!
    @IBOutlet weak var exerciseTwo: UILabel!
    @IBOutlet weak var exerciseThree: UILabel!
    @IBOutlet weak var exerciseFour: UILabel!
    @IBOutlet weak var exerciseFive: UILabel!
    
    
    override func viewWillAppear(_ animate: Bool){
        wallSitCounter.text = String((parent as! VC_legsManagement).wallSit)
        
        wallSitCalfRaiseCounter.text = String((parent as! VC_legsManagement).wallSitCalfRaise)
        
        if(parent as! VC_legsManagement).wallSit > (parent as! VC_legsManagement).wallSitCalfRaise
        {
            exerciseOne.text = "Wall Sit"
        }
        else{
            exerciseOne.text = "Wall Sit with Calf Raises"
        }
    
    burpeesCounter.text = String((parent as! VC_legsManagement).burpees)
    
    jumpSquatCounter.text = String((parent as! VC_legsManagement).jumpSquat)
    
    if(parent as! VC_legsManagement).burpees > (parent as! VC_legsManagement).jumpSquat
    {
        exerciseTwo.text = "Burpees"
    }
    else{
        exerciseTwo.text = "Jump Squats"
        }
    
    squatWithPulseCounter.text = String((parent as! VC_legsManagement).squatWithPulse)
    
    squatCounter.text = String((parent as! VC_legsManagement).squat)
    
    if(parent as! VC_legsManagement).squatWithPulse > (parent as! VC_legsManagement).squat
    {
        exerciseThree.text = "Squat with Pulse"
    }
    else{
        exerciseThree.text = "Squats"
        }
    
    heismanCounter.text = String((parent as! VC_legsManagement).heisman)
    
    highKneesCounter.text = String((parent as! VC_legsManagement).highKnees)
    
    if(parent as! VC_legsManagement).heisman > (parent as! VC_legsManagement).highKnees
    {
        exerciseFour.text = "Heismans"
    }
    else{
        exerciseFour.text = "High Knees"
        }
    
    sideLungeCounter.text = String((parent as! VC_legsManagement).sideLunge)
    
    lungeCounter.text = String((parent as! VC_legsManagement).lunge)
    
    if(parent as! VC_legsManagement).sideLunge > (parent as! VC_legsManagement).lunge
    {
        exerciseFive.text = "Side Lunges"
    }
    else{
        exerciseFive.text = "Lunges"
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
