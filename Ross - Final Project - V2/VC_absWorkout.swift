//
//  VC_absWorkout.swift
//  Ross - Final Project - V2
//
//  Created by Emily Ross on 4/29/20.
//  Copyright © 2020 Emily Ross. All rights reserved.
//

import UIKit

class VC_absWorkout: UIViewController {
    
    @IBOutlet weak var flutterKickCounter: UILabel!
    @IBOutlet weak var sideCrunchCounter: UILabel!
    @IBOutlet weak var reverseCrunchCounter: UILabel!
    @IBOutlet weak var heelTapsCounter: UILabel!
    @IBOutlet weak var standingCrunchCounter: UILabel!
    @IBOutlet weak var russianTwistCounter: UILabel!
    @IBOutlet weak var legUpCrunchCounter: UILabel!
    @IBOutlet weak var bicycleCrunchCounter: UILabel!
    @IBOutlet weak var hipDipPlankCounter: UILabel!
    @IBOutlet weak var upDownPlankCounter: UILabel!
    @IBOutlet weak var exerciseOne: UILabel!
    @IBOutlet weak var exerciseTwo: UILabel!
    @IBOutlet weak var exerciseThree: UILabel!
    @IBOutlet weak var exerciseFour: UILabel!
    @IBOutlet weak var exerciseFive: UILabel!
    
    override func viewWillAppear(_ animate: Bool){
           flutterKickCounter.text = String((parent as! VC_absManagement).flutterKicks)
           
           sideCrunchCounter.text = String((parent as! VC_absManagement).sideCrunch)
           
           if(parent as! VC_absManagement).flutterKicks > (parent as! VC_absManagement).sideCrunch
           {
               exerciseOne.text = "Flutter Kicks"
           }
           else{
               exerciseOne.text = "Side Crunches"
           }
       
       reverseCrunchCounter.text = String((parent as! VC_absManagement).reverseCrunch)
       
       heelTapsCounter.text = String((parent as! VC_absManagement).heelTaps)
       
       if(parent as! VC_absManagement).reverseCrunch > (parent as! VC_absManagement).heelTaps
       {
           exerciseTwo.text = "Reverse Crunches"
       }
       else{
           exerciseTwo.text = "Heel Taps"
           }
       
       standingCrunchCounter.text = String((parent as! VC_absManagement).standingCrunch)
       
       russianTwistCounter.text = String((parent as! VC_absManagement).russianTwists)
       
       if(parent as! VC_absManagement).standingCrunch > (parent as! VC_absManagement).russianTwists
       {
           exerciseThree.text = "Standing Crunches"
       }
       else{
           exerciseThree.text = "Russian Twists"
           }
       
        legUpCrunchCounter.text = String((parent as! VC_absManagement).legUpCrunch)
       
       bicycleCrunchCounter.text = String((parent as! VC_absManagement).bicycleCrunch)
       
       if(parent as! VC_absManagement).legUpCrunch > (parent as! VC_absManagement).bicycleCrunch
       {
           exerciseFour.text = "Leg Up Crunch"
       }
       else{
           exerciseFour.text = "Bicycle Crunch"
           }
       
       hipDipPlankCounter.text = String((parent as! VC_absManagement).hipDipPlank)
       
       upDownPlankCounter.text = String((parent as! VC_absManagement).upDownPlank)
       
       if(parent as! VC_absManagement).hipDipPlank > (parent as! VC_absManagement).upDownPlank
       {
           exerciseFive.text = "Hip Dip Plank"
       }
       else{
           exerciseFive.text = "Up Down Plank"
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
