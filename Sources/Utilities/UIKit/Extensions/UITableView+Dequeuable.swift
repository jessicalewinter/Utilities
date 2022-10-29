import Foundation
#if canImport(UIKit)
import UIKit

extension UITableView: Dequeuable {
    public typealias CellType = UITableViewCell
    
    public func dequeueReusableCell<T: CellType>(for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Trying to dequeue cell of different type from reuseIdentifier")
        }
        return cell
    }
        
   public func dequeueReusableCell<T: CellType>() -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: T.reuseIdentifier) as? T else {
            fatalError("Trying to dequeue cell of different type from reuseIdentifier")
        }
        return cell
    }
}
#endif
