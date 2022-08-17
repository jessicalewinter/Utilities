import Foundation
import UIKit

extension UICollectionView: Registrable {
    typealias CellType = UICollectionViewCell
    
    func registerCell<Cell: UICollectionViewCell>(_ cellClass: Cell.Type) {
        register(cellClass, forCellWithReuseIdentifier: Cell.reuseIdentifier)
    }
}
