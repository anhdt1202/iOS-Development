//
//  DetailViewController.swift
//  Airliners
//
//  Created by AnhDT on 11/23/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var detailTable: UITableView!
    
    var airplane: AirplanesModel?
    var keys: [Key] = Key.allCases
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTable()
        navigationController?.isNavigationBarHidden = true
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
            let myString = airplane?.longDescription
            let range = (myString! as NSString).range(of: "Boeing \\d+",options: .regularExpression)
            print(range)
            let attribute = NSMutableAttributedString.init(string: myString!)
            attribute.addAttribute(NSAttributedString.Key.font, value: UIFont.boldSystemFont(ofSize: 17) , range: range)
            
           
            cell.infoLabel.attributedText = attribute
//                airplane?.longDescription
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
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 1 {
            let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 36))
            let title = UILabel(frame: CGRect(x: 16, y: 16, width: tableView.frame.width - 32, height: 20))
            title.font = UIFont.boldSystemFont(ofSize: 17)
            title.textColor = UIColor.black
            title.text = "Information"
            view.addSubview(title)
            return view
        } else { return UIView()}
        
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 1 ? 36 : 0
    }
    
}

