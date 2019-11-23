//
//  ViewController.swift
//  Airliners
//
//  Created by AnhDT on 11/23/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var airplaneTable: UITableView!
    
    let dataSource: [airplanesModel] = [.a707, .a717, .a727, .a737, .a747, .a757, .a767, .a777]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUpTable()
    }
    
    func setUpTable() {
        airplaneTable.delegate = self
        airplaneTable.dataSource = self
        airplaneTable.register(UINib(nibName: "AirPlaneTableViewCell", bundle: nil), forCellReuseIdentifier: "AirPlaneTableViewCell")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AirPlaneTableViewCell", for: indexPath) as? AirPlaneTableViewCell else {
            return UITableViewCell()
        }
        
        let airplane = dataSource[indexPath.row]
        cell.titleLabel.text = airplane.name
        cell.bodyLabel.text = airplane.shortInfo
        cell.imgView.image = airplane.image
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        detailVC.airplane = dataSource[indexPath.row]
        present(detailVC, animated: true, completion: nil)
    }
}

