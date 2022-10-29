import Foundation
#if canImport(UIKit)
import UIKit

extension UIView {
    public func setToEdges(_ view: UIView, padding: CGFloat = 0) {
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: padding),
            view.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -padding),
            view.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -padding),
            view.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: padding)
        ])
    }
}
#endif
