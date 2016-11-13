//
//  Spot.swift
//  NapApp
//
//  Created by Jacob Hillman on 11/13/16.
//  Copyright © 2016 Jacob Hillman. All rights reserved.
//

import UIKit

class Spot {
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int){
        //initializes stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
        
        //initialization should fail if there is no name or rating is less than 0
        if name.isEmpty || rating < 0{
            return nil
        }
        
    }
    
}