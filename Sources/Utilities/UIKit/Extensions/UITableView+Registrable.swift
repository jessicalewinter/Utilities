import Foundation
#if canImport(UIKit)
import UIKit

extension UITableView: Registrable {
    public func registerCell<Cell: UITableViewCell>(_ cellClass: Cell.Type) {
        register(cellClass, forCellReuseIdentifier: Cell.reuseIdentifier)
    }
}

#endif
