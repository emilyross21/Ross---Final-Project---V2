//
//  VC_endInformation.swift
//  Ross - Final Project - V2
//
//  Created by Emily Ross on 5/3/20.
//  Copyright © 2020 Emily Ross. All rights reserved.
//

import UIKit

class VC_endInformation: UIViewController {
    
    @IBOutlet weak var dateInput: UITextField!
    @IBOutlet weak var workoutInput: UITextField!
    @IBOutlet weak var exerciseInput: UITextField!
    @IBOutlet weak var moodInput: UITextField!
    @IBOutlet weak var displayInput: UITextView!
    
    
    @IBAction func saveResults(_ sender: Any) {
        let csvLine:String =
        
        "\(dateInput.text!),\(workoutInput.text!),\(exerciseInput.text!),\(moodInput.text!)\n"
        let paths =
            NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
        let docDir:String=paths[0]
        let resultsFile:String=(docDir as NSString).appendingPathComponent("results.csv")
        
        if !FileManager.default.fileExists(atPath: resultsFile) {
            FileManager.default.createFile(atPath: resultsFile,contents: nil, attributes: nil)
        }
        
       let fileHandle:FileHandle=FileHandle(forUpdatingAtPath:resultsFile)!
              fileHandle.seekToEndOfFile()
              fileHandle.write(csvLine.data(using: String.Encoding.utf8)!)
        
        dateInput.text = ""
        workoutInput.text = ""
        exerciseInput.text = ""
        moodInput.text = ""
        
    }
    
    
    @IBAction func displayResults(_ sender: Any) {
        let paths =
            NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
        let docDir:String=paths[0] as String
        
        let resultsFile:String=(docDir as NSString).appendingPathComponent("results.csv")
        
        if FileManager.default.fileExists(atPath: resultsFile){
            let fileHandle:FileHandle = FileHandle(forReadingAtPath:resultsFile)!
         let resultsData:String!=NSString(data: fileHandle.availableData, encoding: String.Encoding.utf8.rawValue)! as String
                       fileHandle.closeFile()
            displayInput?.text=resultsData
           
        }
        else{
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
