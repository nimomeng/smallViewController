//
//  UITableViewCell+ConfigCell.swift
//  smallViewController
//
//  Created by nimo on 08/01/2018.
//  Copyright © 2018 nimoAndHisFriends. All rights reserved.
//

import Foundation
import UIKit

extension UITableViewCell {
    func configCell(_ text: String) {
        self.textLabel?.text = text
    }
}
