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
    }
    
    func fetchData(){
        data = Api.shared.fetchData()
    }
    
    func setupTableView(){
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
        
        let i:Int = indexPath.row
        let item = data[i]
        cell.configure(item: item)
        return cell
    }
}

extension HomeVC: UITableViewDelegate {
    
}
