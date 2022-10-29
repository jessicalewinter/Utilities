import Foundation

public protocol Identifiable {
    static var reuseIdentifier: String { get }
}

public extension Identifiable {
    static var reuseIdentifier: String {
        String(describing: Self.self)
    }
}

#if canImport(UIKit)
import UIKit

extension UITableViewCell: Identifiable {}
extension UICollectionViewCell: Identifiable {}

#endif
