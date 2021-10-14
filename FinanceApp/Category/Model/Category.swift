//
//  Category.swift
//  FinanceApp
//
//  Created by admin on 12.10.2021.
//

import RealmSwift

class Category: Object {
    @Persisted var name = ""
    @Persisted var spends: List<Spend>
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}

