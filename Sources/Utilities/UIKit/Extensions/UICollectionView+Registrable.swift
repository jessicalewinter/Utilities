import Foundation
import UIKit

extension UICollectionView: Registrable {
    public typealias CellType = UICollectionViewCell
    
    public func registerCell<Cell: UICollectionViewCell>(_ cellClass: Cell.Type) {
        register(cellClass, forCellWithReuseIdentifier: Cell.reuseIdentifier)
    }
}
