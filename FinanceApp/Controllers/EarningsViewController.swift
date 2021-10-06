//
//   IncomeViewController.swift
//  FinanceApp
//
//  Created by admin on 04.10.2021.
//

import UIKit

class EarningsViewController: UIViewController {
    
    var dummyData = ["First", "Second","Third", "Four", "Five", "Six", "Seven", "Eight", "Nine"," Ten"]
    
    let totalLabel = UILabel(text: "Total")
    let sumLabel = UILabel(text: "49999")
    let mainLabel = UILabel(text: "Earnings",font: .geezaPro30())
    let tableView = UITableView()
    let addEarningsButton = UIButton(title: "Add earnings",titleColor: #colorLiteral(red: 0.2352941176, green: 0.137254902, blue: 0.0862745098, alpha: 1) ,backgroundColor: #colorLiteral(red: 0.2470588235, green: 0.9960784314, blue: 0.1843137255, alpha: 1))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.dataSource = self
        setupConstaints()
        setupTableView()
    }
}

//MARK: - Setup layout
extension EarningsViewController {
    private func setupConstaints() {
        totalLabel.translatesAutoresizingMaskIntoConstraints = false
        sumLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        addEarningsButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(totalLabel)
        view.addSubview(sumLabel)
        view.addSubview(mainLabel)
        view.addSubview(addEarningsButton)
        
        NSLayoutConstraint.activate([
            totalLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            totalLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50)
        ])
        
        NSLayoutConstraint.activate([
            sumLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            sumLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: sumLabel.bottomAnchor ,constant: 50),
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            addEarningsButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            addEarningsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            addEarningsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    private func setupTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 8),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            tableView.bottomAnchor.constraint(equalTo: addEarningsButton.topAnchor, constant: -8)
        ])
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
}

//MARK: - TableView datasource
extension EarningsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = dummyData[indexPath.row]
        return cell
    }
}

//MARK: - SwiftUI
import SwiftUI

struct EarningsVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        let incomeVC = EarningsViewController()
        
        func makeUIViewController(context: Context) -> some UIViewController {
            return incomeVC
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}

