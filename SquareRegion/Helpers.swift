//
//  Helpers.swift
//  SquareRegion
//
//
//  Created by Atul Dhiman on 28/11/22.
//


import Foundation
import UIKit

struct Helpers{

    public static func showAlert(_ title: String, sender: UIViewController, message: String? = nil) {
        let alert = UIAlertController(title: title, message: message ?? nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        sender.present(alert, animated: true, completion: nil)
    }

    
}
