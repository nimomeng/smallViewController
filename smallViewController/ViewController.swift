//
//  ViewController.swift
//  smallViewController
//
//  Created by nimo on 07/01/2018.
//  Copyright © 2018 nimoAndHisFriends. All rights reserved.
//

import UIKit
//import DataSourceAndDelegateClass

class ViewController: UIViewController {
    
    var table = UITableView()
    let data = [1,2,3,4,5,6,7,7]
    var dataSource = DataSourceAndDelegateClass.init()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initTableView()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initTableView() {
        table = UITableView.init(frame: self.view.frame)
        table.delegate = dataSource
        table.dataSource = dataSource
        self.view.addSubview(table)
        table.reloadData()
    }
}

// ===================================================
// ===================================================

// remove all dataSource out of viewController
//class DataSourceAndDelegateClass: NSObject, UITableViewDataSource, UITableViewDelegate {
//    var data = [1,2,3,4,5,6,7,7]
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return data.count
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let reusableID = "reusableCell"
//        var cell = tableView.dequeueReusableCell(withIdentifier: reusableID)
//        if cell == nil {
//            cell = UITableViewCell.init(style: .default, reuseIdentifier: reusableID)
//        }
//        cell?.configCell(String(data[indexPath.section]))
//        return cell!
//    }
//    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 80
//    }
//}

// =====================================================
// =====================================================

// remove all UI layout relatecd logic into extension of UITableViewCell
//extension UITableViewCell {
//    func configCell(_ text: String) {
//        self.textLabel?.text = text
//    }
//}

