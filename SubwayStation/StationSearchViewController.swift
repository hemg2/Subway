//
//  ViewController.swift
//  SubwayStation
//
//  Created by 1 on 2023/01/02.
//

import UIKit
import SnapKit

class StationSearchViewController: UIViewController {
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        view.backgroundColor = .red
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "지하철 도착 정보"
        
        let searchController = UISearchController()
        searchController.searchBar.placeholder = "지하철 역을 입력해주세요"
        searchController.obscuresBackgroundDuringPresentation = false
        
        navigationItem.searchController = searchController
    }

}


extension StationSearchViewController: UITableViewDataSource {
    
}


extension StationSearchViewController: UITableViewDelegate {
    
}
