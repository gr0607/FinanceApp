//
//  EarningsTableViewCellPresenter.swift
//  FinanceApp
//
//  Created by admin on 14.10.2021.
//

import UIKit

class EarningsTableViewCellPresenter {
    weak var earningsCell: EarningTableViewCell!
    
    init(earningsCell: EarningTableViewCell) {
        self.earningsCell = earningsCell
    }
    
    func configure(with earnings: Earnings) {
        earningsCell.earningNameLabel.text = earnings.incomeName
        earningsCell.earningCountLabel.text = "\(earnings.incomeSum.description)$"
        earningsCell.earningDateLabel.text = convertDate(date: earnings.date)
    }
    
    private func convertDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMM y"
        return formatter.string(from: date)
    }
}
