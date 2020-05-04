//
//  VC_absExercise.swift
//  Ross - Final Project - V2
//
//  Created by Emily Ross on 4/29/20.
//  Copyright © 2020 Emily Ross. All rights reserved.
//

import UIKit

class VC_absExercise: UIViewController {
    
    @IBAction func flutterKickExercise(_ sender: Any) {
        (parent as! VC_absManagement).flutterKicks+=1
    }
    
    @IBAction func sideCrunchExercise(_ sender: Any) {
        (parent as! VC_absManagement).sideCrunch+=1
    }
    
    @IBAction func reverseCrunchExercise(_ sender: Any) {
        (parent as! VC_absManagement).reverseCrunch+=1
    }
    
    @IBAction func heelTapExercise(_ sender: Any) {
        (parent as! VC_absManagement).heelTaps+=1
    }
    
    @IBAction func standingCrunchExercise(_ sender: Any) {
        (parent as! VC_absManagement).standingCrunch+=1
    }
    
    @IBAction func russianTwistExercise(_ sender: Any) {
        (parent as! VC_absManagement).russianTwists+=1
    }
    
    @IBAction func legUpCrunchExercise(_ sender: Any) {
        (parent as! VC_absManagement).legUpCrunch+=1
    }
    
    @IBAction func bicycleCrunchExercise(_ sender: Any) {
        (parent as! VC_absManagement).bicycleCrunch+=1
    }
    
    @IBAction func hipDipPlankExercise(_ sender: Any) {
        (parent as! VC_absManagement).hipDipPlank+=1
    }
    
    @IBAction func upDownPlankExercise(_ sender: Any) {
        (parent as! VC_absManagement).upDownPlank+=1
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
