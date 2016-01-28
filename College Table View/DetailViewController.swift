//
//  DetailViewController.swift
//  College Table View
//
//  Created by Student on 1/27/16.
//  Copyright © 2016 Shamman. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var collegeTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var populationTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    var college : College!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collegeTextField.text = college.name
        stateTextField.text = college.state
        populationTextField.text = String(college.population)
        imageView.image = college.image
        
    }
    @IBAction func onTappedSaveButton(sender: UIButton)
    {
        college.name = collegeTextField.text!
        college.state = stateTextField.text!
        college.population = Int(populationTextField.text!)!
    }
}
