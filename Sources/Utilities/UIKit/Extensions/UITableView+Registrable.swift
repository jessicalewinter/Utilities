import Foundation
import UIKit

extension UITableView: Registrable {
    func registerCell<Cell: UITableViewCell>(_ cellClass: Cell.Type) {
        register(cellClass, forCellReuseIdentifier: Cell.reuseIdentifier)
    }
}
