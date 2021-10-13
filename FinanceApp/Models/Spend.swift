//
//  Spend.swift
//  FinanceApp
//
//  Created by admin on 12.10.2021.
//

import Foundation
import RealmSwift

class Spend: Object {
    @objc dynamic var name = ""
    @objc dynamic var amount = 0
    @objc dynamic var date = Date()
    
    convenience init(name: String, amount: Int, date: Date) {
        self.init()
        self.name = name
        self.amount = amount
        self.date = date
    }
}
