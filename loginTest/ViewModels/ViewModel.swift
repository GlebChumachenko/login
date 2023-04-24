//
//  ViewModel.swift
//  loginTest
//
//  Created by Gleb Chumachenko on 24.04.23.
//

import Foundation
import UIKit.UIColor

class ViewModel {
    var status = Dynamic("")
    var statusColor = Dynamic(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    
    func confirmPressed(login: String) {
        if login != User.getLogins().login {
            status.value = "Incorrect e-mail or phone number"
            statusColor.value = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        } else {
            status.value = "Succesfully enter"
            statusColor.value = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }
    }
}
