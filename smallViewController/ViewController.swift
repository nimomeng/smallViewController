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
    var dataSource: DataSourceAndDelegateClass? = nil
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
        self.dataSource = DataSourceAndDelegateClass.init(data) { (cell: UITableViewCell, string: String) in
            cell.configCell(string)
        }
        table.delegate = dataSource
        table.dataSource = dataSource
        self.view.addSubview(table)
        table.reloadData()
    }
}

