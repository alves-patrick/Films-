//
//  Film.swift
//  Films
//
//  Created by Patrick Alves on 1/25/24.
//

import Foundation

class Film {
    
    var name:String
    var imageName:String
    var isMyfavorite:Bool
    
    init(name: String, imageName: String, isMyfavorite: Bool) {
        self.name = name
        self.imageName = imageName
        self.isMyfavorite = isMyfavorite
    }
}
