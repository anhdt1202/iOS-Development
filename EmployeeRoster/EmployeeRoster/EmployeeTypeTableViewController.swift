//
//  EmployeeTypeTableViewController.swift
//  EmployeeRoster
//
//  Created by AnhDT on 12/12/19.
//

import UIKit

protocol EmployeeTypeDelegate {
    func didSelect(employee: EmployeeType)
}
class EmployeeTypeTableViewController: UITableViewController {
    var employeeType: EmployeeType?
    var delegate: EmployeeTypeDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return EmployeeType.all.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeeTypeCell", for: indexPath)
        let type = EmployeeType.all[indexPath.row]
        
        cell.textLabel?.text = type.description()
        if employeeType == type {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let selectType = EmployeeType.all[indexPath.row]
        employeeType = selectType
        delegate?.didSelect(employee: selectType)
        tableView.reloadData()
    }
}
