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
    
    let dataSource: [AirplanesModel] = AirplanesModel.allCases
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let logo = UIImage(named: "NavTitle")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        self.navigationController?.navigationBar.shadowImage = UIImage()
        // Do any additional setup after loading the view.
        
        setUpTable()
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    @IBAction func unwind(unwindSegue: UIStoryboardSegue){
                  
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
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
}

