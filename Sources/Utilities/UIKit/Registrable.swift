import Foundation

public protocol Registrable {
    associatedtype CellType
    
    func registerCell(_ cellClass: CellType.Type)
}
