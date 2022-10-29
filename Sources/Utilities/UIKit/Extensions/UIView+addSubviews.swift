#if canImport(UIKit)
import UIKit

public extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach { addSubview($0) }
    }
}
#endif
