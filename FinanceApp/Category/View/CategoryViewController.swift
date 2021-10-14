//
//  SpendViewController.swift
//  FinanceApp
//
//  Created by admin on 04.10.2021.
//

import UIKit

class CategoryViewController: UIViewController {
        
    lazy var categoryPresenter = CategoryViewControllerPresenter(categoryVC: self)
    
    let tableView = UITableView()
    let spendButton = UIButton(title: "Add Spending", titleColor: #colorLiteral(red: 0.2352941176, green: 0.137254902, blue: 0.0862745098, alpha: 1), backgroundColor: #colorLiteral(red: 0.2470588235, green: 0.9960784314, blue: 0.1843137255, alpha: 1), font: .geezaPro20())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Category"
        setupConstraints()
        view.backgroundColor = .white
        tableView.dataSource = self
        tableView.delegate = self
    }
}

//MARK: - Setup Layout
extension CategoryViewController {
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

extension CategoryViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryPresenter.getCategoriesCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let category = categoryPresenter.getCategories(for: indexPath)
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = category.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = categoryPresenter.getCategories(for: indexPath)
        categoryPresenter.showDetail(for: category)
    }
}

//MARK: - SwiftUI
import SwiftUI

struct SpendVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        let spendVC = CategoryViewController()
        
        func makeUIViewController(context: Context) -> some UIViewController {
            return spendVC
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}

