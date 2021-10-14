//
//  DetailSpendViewControlelr.swift
//  FinanceApp
//
//  Created by admin on 13.10.2021.
//

import UIKit
import RealmSwift

class SpendViewController: UITableViewController {
    
    lazy var spendPresenter = SpendViewControllerPresenter(spendViewController: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return spendPresenter.getDetailsCount() ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let detail = spendPresenter.getDetail(for: indexPath)
        cell.textLabel?.text = detail?.name ?? "1"
        return cell
    }
}
