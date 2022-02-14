//
//  StorageManager.swift
//  MFP
//
//  Created by Sergey on 07/12/2021.
//  Copyright © 2022 Sergey Karavaev. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
}
