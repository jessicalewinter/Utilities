//
//  File.swift
//  
//
//  Created by Jessica Lewinter on 17/08/22.
//

import Foundation
import UIKit

extension UITableView: Dequeuable {
    typealias CellType = UITableViewCell
    
    func dequeueReusableCell<T: CellType>(for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Trying to dequeue cell of different type from reuseIdentifier")
        }
        return cell
    }
        
    func dequeueReusableCell<T: CellType>() -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: T.reuseIdentifier) else {
            fatalError("Trying to dequeue cell of different type from reuseIdentifier")
        }
        return cell
    }
}
