//
//  File.swift
//  
//
//  Created by Jessica Lewinter on 14/10/22.
//

import Foundation
import UIKit

extension UIView {
    public func setToEdges(_ view: UIView) {
        NSLayoutConstraint.activate([
            self.topAnchor = view.topAnchor,
            self.trailingAnchor = view.trailingAnchor,
            self.bottomAnchor = view.bottomAnchor,
            self.leadingAnchor = view.leadingAnchor
        ])
    }
}
