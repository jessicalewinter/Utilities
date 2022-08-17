import Foundation
import UIKit

extension UICollectionView: Dequeuable {
    func dequeueReusableCell<T: CellType>(for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Trying to dequeue cell of different type from reuseIdentifier")
        }
        
        return cell
    }
}
