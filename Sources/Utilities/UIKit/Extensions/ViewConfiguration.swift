import Foundation

import UIKit

public protocol ViewConfiguration: AnyObject {
    func buildViews()
    func setupConstraints()
    func configureViews()
    func setupLayout()
}

public extension ViewConfiguration {
    func setupLayout() {
        buildViews()
        setupConstraints()
        configureViews()
    }

    func configureViews() { }
}
