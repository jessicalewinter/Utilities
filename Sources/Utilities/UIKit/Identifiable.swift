import Foundation
import UIKit

public protocol Identifiable {
    static var reuseIdentifier: String { get }
}

public extension Identifiable {
    static var reuseIdentifier: String {
        String(describing: Self.self)
    }
}

extension UITableViewCell: Identifiable {}
extension UICollectionViewCell: Identifiable {}
