import Foundation

public protocol Dequeuable {
    associatedtype CellType
    
    func dequeueReusableCell(for indexPath: IndexPath) -> CellType
}
