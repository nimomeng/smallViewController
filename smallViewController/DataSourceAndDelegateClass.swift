//
//  DataSourceAndDelegateClass.swift
//  smallViewController
//
//  Created by nimo on 08/01/2018.
//  Copyright © 2018 nimoAndHisFriends. All rights reserved.
//

import UIKit

class DataSourceAndDelegateClass: NSObject, UITableViewDataSource, UITableViewDelegate {
    var data = [1,2,3,4,5,6,7,7]
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reusableID = "reusableCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: reusableID)
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: reusableID)
        }
        cell?.configCell(String(data[indexPath.section]))
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
