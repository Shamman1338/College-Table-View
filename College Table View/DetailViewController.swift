//
//  DetailViewController.swift
//  College Table View
//
//  Created by Student on 1/27/16.
//  Copyright © 2016 Shamman. All rights reserved.
//

import UIKit
import SafariServices

class DetailViewController: UIViewController, SFSafariViewControllerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var collegeTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var populationTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var webpageTextField: UITextField!
    let imagePicker = UIImagePickerController()
    var college : College!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        collegeTextField.text = college.name
        stateTextField.text = college.state
        populationTextField.text = String(college.population)
        imageView.image = college.image
        webpageTextField.text = college.webpage
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        imagePicker.dismissViewControllerAnimated(true) { () -> Void in
            let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
            self.imageView.image = selectedImage
    }
    }
    
    @IBAction func onTappedSaveButton(sender: UIButton)
        {
        
        college.name = collegeTextField.text!
        college.state = stateTextField.text!
        college.population = Int(populationTextField.text!)!
        college.webpage = webpageTextField.text!
        college.image = imageView.image!
        }
    
    @IBAction func goToWebsite(sender: AnyObject)
        
        {
        
        let url = NSURL(string: college.webpage)
        let svc = SFSafariViewController(URL: url!)
        svc.delegate = self
        self.presentViewController(svc, animated: true, completion: nil)
        
        }
    
    @IBAction func onCameraButtonTapped(sender: AnyObject)
        
        {
        
        if UIImagePickerController.isSourceTypeAvailable(.Camera)
        
        {
        
        imagePicker.sourceType = UIImagePickerControllerSourceType.Camera
        presentViewController(imagePicker, animated: true, completion: nil)
        
        }
        }
    
    @IBAction func onLibraryButtonTapped(sender: AnyObject)
    
    {
        
        imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        presentViewController(imagePicker, animated: true, completion: nil)
   
    }
    }
