//
//  StorageManager.swift
//  FinanceApp
//
//  Created by admin on 12.10.2021.
//

import Foundation
import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func getAllEarnings() -> Results<Earnings> {
        return realm.objects(Earnings.self)
    }
    
    static func saveEarnings(_ income: Earnings) {
        try! realm.write({
            realm.add(income)
        })
    }
}
