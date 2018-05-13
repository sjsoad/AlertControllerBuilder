//
//  AlertControllerBuilder.swift
//  AlertControllerBuilder
//
//  Created by Sergey Kostyan on 27.04.2018.
//  Copyright © 2018 Sergey Kostyan. All rights reserved.
//

import UIKit
import Foundation
import AlertActionBuilder

public extension UIAlertController {

    static func build(title: String?, message: String?, actionsConfiguration: [AlertActionConfig],
                             preferredStyle: UIAlertControllerStyle) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        actionsConfiguration.forEach { (actionConfiguration) in
            let alertAction = UIAlertAction.build(from: actionConfiguration)
            alert.addAction(alertAction)
        }
        return alert
    }

}
