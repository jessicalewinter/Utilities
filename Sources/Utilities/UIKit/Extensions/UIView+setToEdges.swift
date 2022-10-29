import Foundation
#if canImport(UIKit)
import UIKit

extension UIView {
    public func setToEdges(_ view: UIView, padding: CGFloat = 0) {
        if #available(iOS 11.0, *) {
            NSLayoutConstraint.activate([
                view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: padding),
                view.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -padding),
                view.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -padding),
                view.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: padding)
            ])
        } else {
            // Fallback on earlier versions
            NSLayoutConstraint.activate([
                view.topAnchor.constraint(equalTo: self.topAnchor, constant: padding),
                view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
                view.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -padding),
                view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding)
                ])
        }
    }
}
#endif
