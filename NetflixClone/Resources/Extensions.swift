//
//  Extensions.swift
//  NetflixClone
//
//  Created by Bula on 1/7/23.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
