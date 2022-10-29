import Foundation
#if canImport(UIKit)
import UIKit

extension UICollectionView: Registrable {
    public typealias CellType = UICollectionViewCell
    
    public func registerCell<Cell: UICollectionViewCell>(_ cellClass: Cell.Type) {
        register(cellClass, forCellWithReuseIdentifier: Cell.reuseIdentifier)
    }
}

#endif
