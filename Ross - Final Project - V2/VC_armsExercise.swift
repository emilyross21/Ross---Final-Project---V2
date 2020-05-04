//
//  VC_armsExercise.swift
//  Ross - Final Project - V2
//
//  Created by Emily Ross on 4/29/20.
//  Copyright © 2020 Emily Ross. All rights reserved.
//

import UIKit

class VC_armsExercise: UIViewController {
    
    @IBAction func armCirclesExercise(_ sender: Any) {
        (parent as! VC_armsManagement).armCircles+=1
    }
    
    @IBAction func armSwingsExercise(_ sender: Any) {
        (parent as! VC_armsManagement).armSwings+=1
    }
    
    @IBAction func upDownPlankExercise(_ sender: Any) {
        (parent as! VC_armsManagement).upDownPlank+=1
    }
    
    @IBAction func bandReversePlankExercise(_ sender: Any) {
        (parent as! VC_armsManagement).bandReversePlank+=1
    }
    
    @IBAction func tricepDipsExercise(_ sender: Any) {
        (parent as! VC_armsManagement).tricepDips+=1
    }
    
    @IBAction func singleLegTricepDipsExercise(_ sender: Any) {
        (parent as! VC_armsManagement).singleLegTricepDips+=1
    }
    
    @IBAction func pushUpExercise(_ sender: Any) {
        (parent as! VC_armsManagement).pushUps+=1
    }
    
    @IBAction func spidermanPushUpsExercise(_ sender: Any) {
        (parent as! VC_armsManagement).spidermanPushUps+=1
    }
    
    @IBAction func supermanExercise(_ sender: Any) {
        (parent as! VC_armsManagement).superman+=1
    }
    
    @IBAction func backExtensionsExercise(_ sender: Any) {
        (parent as! VC_armsManagement).backExtensions+=1
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
