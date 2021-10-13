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
    
    static func getAllCategories() -> Results<Category> {
        return realm.objects(Category.self)
    }
    
    static func getAllSpends() -> Results<Spend> {
        return realm.objects(Spend.self)
    }
    
    static func saveSpend(_ spend: Spend, for category: Category) {
        try! realm.write({
            category.spends.append(spend)
            realm.add(category)
        })
    }
    
    static func saveCategory(_ category: Category) {
        try! realm.write({
            realm.add(category)
        })
    }
    
    static func remove() {
        try! realm.write({
            realm.delete(realm.objects(Category.self))
            realm.delete(realm.objects(Spend.self))
        })
    }    
}
