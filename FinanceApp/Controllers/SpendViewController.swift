//
//  SpendViewController.swift
//  FinanceApp
//
//  Created by admin on 04.10.2021.
//

import UIKit

class SpendViewController: UIViewController {
    
    var categories = StorageManager.getAllCategories()
    
    let tableView = UITableView()
    let spendButton = UIButton(title: "Add Spending", titleColor: #colorLiteral(red: 0.2352941176, green: 0.137254902, blue: 0.0862745098, alpha: 1), backgroundColor: #colorLiteral(red: 0.2470588235, green: 0.9960784314, blue: 0.1843137255, alpha: 1), font: .geezaPro20())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Spending"
        setupConstraints()
        view.backgroundColor = .white
        tableView.dataSource = self
        tableView.delegate = self
    }
}

//MARK: - Setup Layout
extension SpendViewController {
    private func setupConstraints() {
        view.addSubview(tableView)
        view.addSubview(spendButton)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        spendButton.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: spendButton.topAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            spendButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            spendButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            spendButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80)
        ])
    }
}

extension SpendViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = categories[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let details = categories[indexPath.row].spends
        let detailVC = DetailSpendViewController()
        detailVC.details = details
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

//MARK: - SwiftUI
import SwiftUI

struct SpendVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        let spendVC = SpendViewController()
        
        func makeUIViewController(context: Context) -> some UIViewController {
            return spendVC
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}

