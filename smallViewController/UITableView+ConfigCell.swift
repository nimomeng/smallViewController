//
//  UITableView+ConfigCell.swift
//  smallViewController
//
//  Created by nimo on 13/01/2018.
//  Copyright © 2018 nimoAndHisFriends. All rights reserved.
//

import Foundation
import UIKit
extension UITableViewCell {
    func configCell(_ string: String) {
        self.textLabel?.text = string
    }
}
