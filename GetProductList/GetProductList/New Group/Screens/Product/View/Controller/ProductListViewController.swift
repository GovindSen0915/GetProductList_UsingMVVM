//
//  ProductListViewController.swift
//  GetProductList
//
//  Created by Govind Sen on 30/08/23.
//

import UIKit

class ProductListViewController: UIViewController {
    
    @IBOutlet weak var productTableView: UITableView!
    
    private var viewModel = ProductViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuration()
    }
}

extension ProductListViewController {
    
    func configuration() {
        productTableView.register(UINib(nibName: "ProductCell", bundle: nil), forCellReuseIdentifier: "ProductCell")
        self.initViewModel()
        self.observeEvent()
    }
    
    func initViewModel() {
        self.viewModel.fetchProducts()
    }
    
    // Observes data binding event
    func observeEvent() {
        self.viewModel.eventHandler = { [weak self] event in
            guard let self else { return }
            
            switch event {
            case .loading:
                print("Product loading...")
            case .stopLoading:
                print("Stop loading...")
            case .dataLoaded:
                print("Data loaded...")
                DispatchQueue.main.async {
                    self.productTableView.reloadData()
                }
                print(self.viewModel.products)
            case .error(let error):
                print(error as Any)
            }
        }
        
    }
}

extension ProductListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.viewModel.products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell") as? ProductCell else { return UITableViewCell() }
        let product = viewModel.products[indexPath.row]
        cell.product = product
        return cell
    }
    
    
}
