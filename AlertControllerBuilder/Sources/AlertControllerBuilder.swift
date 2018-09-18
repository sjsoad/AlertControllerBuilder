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
    
    convenience init(title: String?, message: String?, actionsConfiguration: [AlertActionConfigProvider],
                     preferredStyle: UIAlertController.Style) {
        self.init(title: title, message: message, preferredStyle: preferredStyle)
        actionsConfiguration.forEach { (alertActionConfigProvider) in
            let alertAction = UIAlertAction(with: alertActionConfigProvider)
            addAction(alertAction)
        }
    }
    
}
