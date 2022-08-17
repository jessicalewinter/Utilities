import Foundation
import UIKit

public protocol Identifiable {
    static var reuseIdentifier: String { get }
}

extension Identifiable {
    public static var reuseIdentifier: String {
        String(describing: Self.self)
    }
}

extension UITableViewCell: Identifiable {}
extension UICollectionViewCell: Identifiable {}
