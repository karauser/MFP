//
//  PlaceModel.swift
//  MFP
//
//  Created by Sergey on 15/11/2021.
//  Copyright © 2022 Sergey Karavaev. All rights reserved.
//

import RealmSwift

class Place: Object {
    
    @objc dynamic var name   = ""
    @objc dynamic var date   = Date()
    @objc dynamic var rating = 0.0
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
   
    
    convenience init(name: String, location: String?, type: String?, imageData: Data?, rating: Double) {
        self.init()
        self.name      = name
        self.location  = location
        self.type      = type
        self.imageData = imageData
        self.rating.   = rating
    }
}
