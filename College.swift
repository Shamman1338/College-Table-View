//
//  College.swift
//  College Table View
//
//  Created by Student on 1/26/16.
//  Copyright © 2016 Shamman. All rights reserved.
//

import UIKit

class College: NSObject

   { 

    var name = ""
    var state = ""
    var population = 0
    var webpage = ""
    var image = UIImage(named: "Default")
    var location = ""
    convenience init(name: String, location: String, state: String, population: Int, image: UIImage, webpage: String) {
    self.init()
    self.name = name
    self.state = state
    self.population = population
    self.image = image
    self.webpage = webpage
    self.location = location
    
    }
    
    convenience init(name: String)
    
    {
    
    self.init()
    self.name = name
    
    }
    }
