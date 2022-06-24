//
//  Extensions.swift
//  Polydev
//
//  Created by Jafar on 24.06.2022.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
        
    }
}
