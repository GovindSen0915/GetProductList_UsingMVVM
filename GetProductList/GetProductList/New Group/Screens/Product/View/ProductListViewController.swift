//
//  ProductListViewController.swift
//  GetProductList
//
//  Created by Govind Sen on 30/08/23.
//

import UIKit

class ProductListViewController: UIViewController {
    
    private var viewModel = ProductViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuration()
        

    }
  

}

extension ProductListViewController {
    
    func configuration() {
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
                print(self.viewModel.products)
            case .error(let error):
                print(error)
            }
        }
        
    }
}
