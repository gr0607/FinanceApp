//
//  EarningTableViewCell.swift
//  FinanceApp
//
//  Created by admin on 12.10.2021.
//

import UIKit

class EarningTableViewCell: UITableViewCell {
    
    lazy var earningsCellPresenter = EarningsTableViewCellPresenter(earningsCell: self)
    
    static let reuseId = "EarningTableViewCell"
    
    let earningNameLabel = UILabel()
    let earningCountLabel = UILabel()
    let earningDateLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        earningNameLabel.translatesAutoresizingMaskIntoConstraints = false
        earningCountLabel.translatesAutoresizingMaskIntoConstraints = false
        earningDateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(earningNameLabel)
        contentView.addSubview(earningCountLabel)
        contentView.addSubview(earningDateLabel)
        
        NSLayoutConstraint.activate([
            earningNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            earningNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8)
        ])
        
        NSLayoutConstraint.activate([
            earningCountLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            earningCountLabel.topAnchor.constraint(equalTo: earningNameLabel.bottomAnchor, constant: 8),
            earningCountLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            earningDateLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            earningDateLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

