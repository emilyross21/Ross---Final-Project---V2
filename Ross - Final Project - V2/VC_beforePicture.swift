//
//  VC_beforePicture.swift
//  Ross - Final Project - V2
//
//  Created by Emily Ross on 5/3/20.
//  Copyright © 2020 Emily Ross. All rights reserved.
//

import UIKit
import MessageUI

class VC_beforePicture: UIViewController, MFMessageComposeViewControllerDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    var imagePicker: UIImagePickerController!
    var imagePickerController: UIImagePickerController!
    
    @IBAction func takePic(_ sender: Any) {
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        imageView.image = info[.originalImage] as? UIImage
    }
    
    @IBAction func savePic(_ sender: Any) {
        UIImageWriteToSavedPhotosAlbum(imageView.image!, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
    }
    
    @objc func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        if let error = error {
            let ac = UIAlertController(title: "Save error", message: error.localizedDescription, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        } else {
            let ac = UIAlertController(title: "Saved!", message: "Your image has been saved to your photos.", preferredStyle: .alert); ac.addAction(UIAlertAction(title: "OK", style: .default)); present(ac, animated: true)
        }
    }
    
    
    
    @IBAction func sendText(_ sender: Any) {
        let composeVC = MFMessageComposeViewController()
               composeVC.messageComposeDelegate = self
               
               composeVC.recipients = [""]
               composeVC.body = "Come Pick Your Workout!"
               
               if MFMessageComposeViewController.canSendText() {
                   self.present(composeVC, animated: true, completion: nil)
               } else {
                   print("Cannot send message.")
               }
               
           }
           
           func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
               
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
