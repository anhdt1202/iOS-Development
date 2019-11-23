//
//  DetailViewController.swift
//  Airliners
//
//  Created by AnhDT on 11/23/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailTable: UITableView!
    
    var airplane: airplanesModel?
    var keys: [Key] = [.nationalOrigin, .manufacturer, .firstFlight, .produced, .numberBuilt, .status]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setUpTable()
        
        // Do any additional setup after loading the view.
    }
    func setUpTable() {
        detailTable.delegate = self
        detailTable.dataSource = self
        detailTable.register(UINib(nibName: "DetailTableViewCell", bundle: nil), forCellReuseIdentifier: "DetailTableViewCell")
        detailTable.register(UINib(nibName: "HeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "HeaderTableViewCell")
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
extension DetailViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 1 : keys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderTableViewCell", for: indexPath) as? HeaderTableViewCell else {
                return UITableViewCell()
            }
            
            cell.imgView.image = airplane?.image
            cell.infoLabel.text = airplane?.longDescriptin
            
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "DetailTableViewCell", for: indexPath) as? DetailTableViewCell else {
                return UITableViewCell()
            }
            
            let title = keys[indexPath.row].title
            cell.titleLabel.text = title
            cell.bodyLabel.text = airplane?.detail[title]
            
            return cell
            
        }
    }
}
