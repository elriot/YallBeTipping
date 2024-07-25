//
//  ViewController.swift
//  YallBeTipping
//
//  Created by SOOPIN KIM on 2024-07-24.
//

import UIKit

class HomeVC: UIViewController {
    
    var data: [MenuItem] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        setupTableView()
    }
    
    func fetchData(){
        print("fetchData")
        data = Api.shared.fetchData()
    }
    
    private func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension HomeVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableCell", for: indexPath) as! HomeTableCell
        
        let item = data[indexPath.row]
        cell.configure(item: item)
        return cell
    }
}

extension HomeVC: UITableViewDelegate {
    
}
