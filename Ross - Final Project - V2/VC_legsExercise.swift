//
//  VC_legsExercise.swift
//  Ross - Final Project - V2
//
//  Created by Emily Ross on 4/29/20.
//  Copyright © 2020 Emily Ross. All rights reserved.
//

import UIKit

class VC_legsExercise: UIViewController {
    
    @IBAction func wallSitExerise(_ sender: Any) {
        (parent as! VC_legsManagement).wallSit+=1
        }
    
    @IBAction func wallSitCalfRaiseExercise(_ sender: Any) {
        (parent as! VC_legsManagement).wallSitCalfRaise+=1
    }
    
    @IBAction func burpeesExercise(_ sender: Any) {
        (parent as! VC_legsManagement).burpees+=1
    }
    
    @IBAction func jumpSquatExercise(_ sender: Any) {
        (parent as! VC_legsManagement).jumpSquat+=1
    }
    
    @IBAction func squatWithPulseExercise(_ sender: Any) {
        (parent as! VC_legsManagement).squatWithPulse+=1
    }
    
    @IBAction func sqautExercise(_ sender: Any) {
        (parent as! VC_legsManagement).squat+=1
    }
    
    @IBAction func heismanExercise(_ sender: Any) {
        (parent as! VC_legsManagement).heisman+=1
    }
    
    @IBAction func highKneesExercise(_ sender: Any) {
        (parent as! VC_legsManagement).highKnees+=1
    }
    
    @IBAction func sideLungeExercise(_ sender: Any) {
        (parent as! VC_legsManagement).sideLunge+=1
    }
    
    @IBAction func lungeExercise(_ sender: Any) {
        (parent as! VC_legsManagement).lunge+=1
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
